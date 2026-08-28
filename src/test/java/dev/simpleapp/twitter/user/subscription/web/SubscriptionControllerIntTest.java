package dev.simpleapp.twitter.user.subscription.web;

import dev.simpleapp.twitter.security.web.model.LoginRequest;
import dev.simpleapp.twitter.security.web.model.RegisterRequest;
import dev.simpleapp.twitter.user.profile.model.UserProfile;
import dev.simpleapp.twitter.user.profile.repository.UserProfileRepository;
import dev.simpleapp.twitter.user.profile.web.model.UserProfileRegisterRequest;
import dev.simpleapp.twitter.user.subscription.web.model.SubscribeRequest;
import dev.simpleapp.twitter.user.subscription.web.model.UnsubscribeRequest;
import java.util.List;
import java.util.UUID;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.webmvc.test.autoconfigure.AutoConfigureMockMvc;
import org.springframework.data.domain.PageRequest;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import tools.jackson.databind.ObjectMapper;

import static org.junit.jupiter.api.Assertions.assertNotEquals;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@SpringBootTest
@AutoConfigureMockMvc
class SubscriptionControllerIntTest {

    @Autowired
    private MockMvc restMockMvc;

    @Autowired
    private ObjectMapper objectMapper;

    @Autowired
    private UserProfileRepository userProfileRepository;

    /**
     * Токен seeded-пользователя eduardo_jaskolski.
     * У него уже есть профиль и 183 входящие подписки от других seeded-юзеров.
     */
    private String seededUserAccessToken;

    /**
     * Id профиля eduardo_jaskolski. Определяется динамически через репозиторий,
     * чтобы тест не зависел от порядка заполнения seed-данных.
     */
    private long seededProfileId;

    /**
     * Id любого другого профиля, на который seeded-юзер точно ещё не подписан.
     * Используется как цель подписки в основных сценариях.
     */
    private long anotherProfileId;

    @BeforeEach
    void setUp() throws Exception {
        LoginRequest loginRequest = new LoginRequest(
                "eduardo_jaskolski71@yahoo.com",
                "password"
        );

        MvcResult result = restMockMvc
                .perform(
                        MockMvcRequestBuilders
                                .post("/api/v1/authentication/access_token")
                                .contentType(MediaType.APPLICATION_JSON)
                                .content(objectMapper.writeValueAsBytes(loginRequest))
                )
                .andExpect(status().isOk())
                .andReturn();

        seededUserAccessToken = objectMapper.readTree(result.getResponse().getContentAsString())
                .get("idToken").asString();

        seededProfileId = findProfileIdByNickname("eduardo_jaskolski");
        anotherProfileId = findProfileIdByNickname("alejandro_mclaughlin");

        assertNotEquals(seededProfileId, anotherProfileId,
                "Тест требует как минимум два разных seeded-профиля");
    }

    private long findProfileIdByNickname(String nickname) {
        List<UserProfile> profiles = userProfileRepository
                .findAllByNicknameContainingIgnoreCase(nickname, PageRequest.of(0, 1))
                .getContent();
        if (profiles.isEmpty()) {
            throw new IllegalStateException("Не найден seeded-профиль: " + nickname);
        }
        return profiles.getFirst().getId();
    }

    @Test
    void shouldSubscribeCurrentUserToAnotherProfile() throws Exception {
        // Подписка может уже существовать (тесты выполняются в общем контексте),
        // поэтому сначала отписываемся, чтобы тест был идемпотентным.
        unsubscribe(anotherProfileId);

        SubscribeRequest subscribeRequest = new SubscribeRequest(anotherProfileId);

        restMockMvc
                .perform(
                        MockMvcRequestBuilders
                                .post("/api/v1/subscriptions/subscribe")
                                .header("Authorization", "Bearer " + seededUserAccessToken)
                                .contentType(MediaType.APPLICATION_JSON)
                                .content(objectMapper.writeValueAsBytes(subscribeRequest))
                )
                .andExpect(status().isOk());
    }

    @Test
    void shouldUnsubscribeCurrentUserFromAnotherProfile() throws Exception {
        // Сначала убеждаемся, что подписка существует.
        subscribe(anotherProfileId);

        UnsubscribeRequest unsubscribeRequest = new UnsubscribeRequest(anotherProfileId);

        restMockMvc
                .perform(
                        MockMvcRequestBuilders
                                .post("/api/v1/subscriptions/unsubscribe")
                                .header("Authorization", "Bearer " + seededUserAccessToken)
                                .contentType(MediaType.APPLICATION_JSON)
                                .content(objectMapper.writeValueAsBytes(unsubscribeRequest))
                )
                .andExpect(status().isOk());
    }

    @Test
    void shouldRejectDuplicateSubscribe() throws Exception {
        // Сначала чистим состояние и подписываемся.
        unsubscribe(anotherProfileId);
        subscribe(anotherProfileId);

        // Повторная подписка → 4xx (сейчас 400 через B2; ожидаем 409 после B2/B10).
        SubscribeRequest subscribeRequest = new SubscribeRequest(anotherProfileId);

        restMockMvc
                .perform(
                        MockMvcRequestBuilders
                                .post("/api/v1/subscriptions/subscribe")
                                .header("Authorization", "Bearer " + seededUserAccessToken)
                                .contentType(MediaType.APPLICATION_JSON)
                                .content(objectMapper.writeValueAsBytes(subscribeRequest))
                )
                .andExpect(status().is4xxClientError());
    }

    @Test
    void shouldRejectSubscribeToSelf() throws Exception {
        // Цель подписки — собственный id → guard фасада → 400.
        // Тест документирует текущее поведение (см. B2 в архитектурном ревью).
        SubscribeRequest subscribeRequest = new SubscribeRequest(seededProfileId);

        restMockMvc
                .perform(
                        MockMvcRequestBuilders
                                .post("/api/v1/subscriptions/subscribe")
                                .header("Authorization", "Bearer " + seededUserAccessToken)
                                .contentType(MediaType.APPLICATION_JSON)
                                .content(objectMapper.writeValueAsBytes(subscribeRequest))
                )
                .andExpect(status().is4xxClientError());
    }

    @Test
    void shouldRequireAuthenticationForSubscribe() throws Exception {
        SubscribeRequest subscribeRequest = new SubscribeRequest(anotherProfileId);

        restMockMvc
                .perform(
                        MockMvcRequestBuilders
                                .post("/api/v1/subscriptions/subscribe")
                                .contentType(MediaType.APPLICATION_JSON)
                                .content(objectMapper.writeValueAsBytes(subscribeRequest))
                )
                .andExpect(status().isUnauthorized());
    }

    @Test
    void shouldReturnFollowersPage() throws Exception {
        // Создаём подписку, чтобы в списке подписчиков был гарантированно новый фолловер.
        unsubscribe(anotherProfileId);
        subscribe(anotherProfileId);

        // Смотрим на followers автора, на которого мы только что подписались.
        restMockMvc
                .perform(
                        MockMvcRequestBuilders
                                .get("/api/v1/subscriptions/followers")
                                .header("Authorization", "Bearer " + accessTokenFor(anotherProfileId))
                                .param("page", "0")
                                .param("limit", "25")
                )
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.followers").isArray())
                .andExpect(jsonPath("$.totalFollowers").isNumber())
                .andExpect(jsonPath("$.isFirstPage").isBoolean())
                .andExpect(jsonPath("$.isLastPage").isBoolean());
    }

    @Test
    void shouldRequireAuthenticationForFollowers() throws Exception {
        restMockMvc
                .perform(
                        MockMvcRequestBuilders
                                .get("/api/v1/subscriptions/followers")
                                .param("page", "0")
                                .param("limit", "25")
                )
                .andExpect(status().isUnauthorized());
    }

    @Test
    void shouldSubscribeFreshlyRegisteredUserToSeededProfile() throws Exception {
        // Проверяем сквозной сценарий: регистрация → создание профиля →
        // подписка на seeded-автора. Чтобы assertion был детерминированным,
        // проверяем followers самого нового пользователя: для этого
        // seeded-автор подписывается на нового пользователя — и тогда
        // в его списке подписчиков ровно 1 элемент (alicia_krajcik).
        String uniqueEmail = UUID.randomUUID().toString().substring(0, 8) + "@test.com";
        RegisterRequest registerRequest = new RegisterRequest(uniqueEmail, "strong_password");

        restMockMvc
                .perform(
                        MockMvcRequestBuilders
                                .post("/api/v1/accounts/register")
                                .contentType(MediaType.APPLICATION_JSON)
                                .content(objectMapper.writeValueAsBytes(registerRequest))
                )
                .andExpect(status().isCreated());

        LoginRequest loginRequest = new LoginRequest(uniqueEmail, "strong_password");
        MvcResult tokenResult = restMockMvc
                .perform(
                        MockMvcRequestBuilders
                                .post("/api/v1/authentication/access_token")
                                .contentType(MediaType.APPLICATION_JSON)
                                .content(objectMapper.writeValueAsBytes(loginRequest))
                )
                .andExpect(status().isOk())
                .andReturn();

        String newUserToken = objectMapper.readTree(tokenResult.getResponse().getContentAsString())
                .get("idToken").asString();

        String nickname = "test_" + UUID.randomUUID().toString().substring(0, 8);
        UserProfileRegisterRequest profileRequest = new UserProfileRegisterRequest(
                nickname,
                "https://gravatar.com/avatar/test123"
        );

        restMockMvc
                .perform(
                        MockMvcRequestBuilders
                                .post("/api/v1/user-profiles")
                                .header("Authorization", "Bearer " + newUserToken)
                                .contentType(MediaType.APPLICATION_JSON)
                                .content(objectMapper.writeValueAsBytes(profileRequest))
                )
                .andExpect(status().isCreated());

        long newProfileId = findProfileIdByNickname(nickname);
        long targetId = findProfileIdByNickname("alicia_krajcik");

        // Шаг 1: новый пользователь подписывается на alicia_krajcik.
        unsubscribeAs(newUserToken, targetId);
        restMockMvc
                .perform(
                        MockMvcRequestBuilders
                                .post("/api/v1/subscriptions/subscribe")
                                .header("Authorization", "Bearer " + newUserToken)
                                .contentType(MediaType.APPLICATION_JSON)
                                .content(objectMapper.writeValueAsBytes(new SubscribeRequest(targetId)))
                )
                .andExpect(status().isOk());

        // Шаг 2: alicia_krajcik подписывается на нового пользователя.
        // Чтобы assertion был детерминированным, смотрим followers нового пользователя:
        // у него изначально 0 followers, и ровно 1 после шага 2.
        String targetToken = accessTokenFor(targetId);
        unsubscribeAs(targetToken, newProfileId);
        restMockMvc
                .perform(
                        MockMvcRequestBuilders
                                .post("/api/v1/subscriptions/subscribe")
                                .header("Authorization", "Bearer " + targetToken)
                                .contentType(MediaType.APPLICATION_JSON)
                                .content(objectMapper.writeValueAsBytes(new SubscribeRequest(newProfileId)))
                )
                .andExpect(status().isOk());

        // Шаг 3: проверяем followers нового пользователя — там ровно alicia_krajcik.
        restMockMvc
                .perform(
                        MockMvcRequestBuilders
                                .get("/api/v1/subscriptions/followers")
                                .header("Authorization", "Bearer " + newUserToken)
                                .param("page", "0")
                                .param("limit", "25")
                )
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.totalFollowers").value(1))
                .andExpect(jsonPath("$.followers[0].followerNickname").value("alicia_krajcik"))
                .andExpect(jsonPath("$.followers[0].followerId").value(targetId));
    }

    // -- helpers ----------------------------------------------------------

    private void subscribe(long followedId) throws Exception {
        SubscribeRequest request = new SubscribeRequest(followedId);
        restMockMvc
                .perform(
                        MockMvcRequestBuilders
                                .post("/api/v1/subscriptions/subscribe")
                                .header("Authorization", "Bearer " + seededUserAccessToken)
                                .contentType(MediaType.APPLICATION_JSON)
                                .content(objectMapper.writeValueAsBytes(request))
                )
                // Тест идемпотентен: 200 — подписка создана, 400 — уже подписан (B2/B10).
                .andExpect(result -> {
                    int status = result.getResponse().getStatus();
                    if (status != 200 && status != 400 && status != 409) {
                        throw new AssertionError("Unexpected status: " + status);
                    }
                });
    }

    private void unsubscribe(long followedId) throws Exception {
        UnsubscribeRequest request = new UnsubscribeRequest(followedId);
        restMockMvc
                .perform(
                        MockMvcRequestBuilders
                                .post("/api/v1/subscriptions/unsubscribe")
                                .header("Authorization", "Bearer " + seededUserAccessToken)
                                .contentType(MediaType.APPLICATION_JSON)
                                .content(objectMapper.writeValueAsBytes(request))
                )
                // Отписка от несуществующей подписки может вернуть 400 (текущее поведение,
                // см. B2/B10) либо 200 (если use-case станет идемпотентным). Тест идемпотентен.
                .andExpect(result -> {
                    int status = result.getResponse().getStatus();
                    if (status != 200 && status != 400) {
                        throw new AssertionError("Unexpected status: " + status);
                    }
                });
    }

    private void unsubscribeAs(String accessToken, long followedId) throws Exception {
        UnsubscribeRequest request = new UnsubscribeRequest(followedId);
        restMockMvc
                .perform(
                        MockMvcRequestBuilders
                                .post("/api/v1/subscriptions/unsubscribe")
                                .header("Authorization", "Bearer " + accessToken)
                                .contentType(MediaType.APPLICATION_JSON)
                                .content(objectMapper.writeValueAsBytes(request))
                )
                .andExpect(result -> {
                    int status = result.getResponse().getStatus();
                    if (status != 200 && status != 400) {
                        throw new AssertionError("Unexpected status: " + status);
                    }
                });
    }

    /**
     * Получает access token для владельца профиля {@code profileId}.
     * Ищет email по профилю через БД seed-данных напрямую: ники в seed
     * совпадают с email-prefixes, и оба известны заранее.
     */
    private String accessTokenFor(long profileId) throws Exception {
        String nickname = userProfileRepository.findById(profileId)
                .orElseThrow(() -> new IllegalStateException("Profile not found: " + profileId))
                .getNickname();
        String email = nickname + "@gmail.com";
        if ("eduardo_jaskolski".equals(nickname)) {
            email = "eduardo_jaskolski71@yahoo.com";
        } else if ("alejandro_mclaughlin".equals(nickname)) {
            email = "alejandro_mclaughlin@gmail.com";
        } else if ("alicia_krajcik".equals(nickname)) {
            email = "alicia_krajcik@hotmail.com";
        }

        LoginRequest loginRequest = new LoginRequest(email, "password");
        MvcResult result = restMockMvc
                .perform(
                        MockMvcRequestBuilders
                                .post("/api/v1/authentication/access_token")
                                .contentType(MediaType.APPLICATION_JSON)
                                .content(objectMapper.writeValueAsBytes(loginRequest))
                )
                .andExpect(status().isOk())
                .andReturn();
        return objectMapper.readTree(result.getResponse().getContentAsString())
                .get("idToken").asString();
    }
}
