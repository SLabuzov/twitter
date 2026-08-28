package dev.simpleapp.twitter.user.tweet.web;

import dev.simpleapp.twitter.security.web.model.LoginRequest;
import dev.simpleapp.twitter.user.tweet.web.model.TweetAddRequest;
import dev.simpleapp.twitter.user.tweet.web.model.TweetEditRequest;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.webmvc.test.autoconfigure.AutoConfigureMockMvc;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import tools.jackson.databind.ObjectMapper;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@SpringBootTest
@AutoConfigureMockMvc
class TweetControllerIntTest {

    @Autowired
    private MockMvc restMockMvc;

    @Autowired
    private ObjectMapper objectMapper;

    private String accessToken;

    @BeforeEach
    void setUp() throws Exception {
        // Логинимся под seeded-пользователем eduardo_jaskolski —
        // у него уже есть профиль и набор твитов из seed-данных.
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

        String responseBody = result.getResponse().getContentAsString();
        accessToken = objectMapper.readTree(responseBody).get("idToken").asString();
    }

    // -- CRUD: create -------------------------------------------------------

    @Test
    void shouldCreateTweet() throws Exception {
        // Успешный POST: 201 Created, в теле — id и проставленный createdTimestamp.
        TweetAddRequest addRequest = new TweetAddRequest("This is a test tweet message for integration testing");

        restMockMvc
                .perform(
                        MockMvcRequestBuilders
                                .post("/api/v1/tweets")
                                .header("Authorization", "Bearer " + accessToken)
                                .contentType(MediaType.APPLICATION_JSON)
                                .content(objectMapper.writeValueAsBytes(addRequest))
                )
                .andExpect(status().isCreated())
                .andExpect(jsonPath("$.id").isNumber())
                .andExpect(jsonPath("$.message").value("This is a test tweet message for integration testing"))
                .andExpect(jsonPath("$.createdTimestamp").isNotEmpty());
    }

    @Test
    void shouldNotCreateTweetWithoutAuth() throws Exception {
        // Без Authorization — SecurityFilterChain возвращает 401 ещё до контроллера.
        TweetAddRequest addRequest = new TweetAddRequest("This is a test tweet message for integration testing");

        restMockMvc
                .perform(
                        MockMvcRequestBuilders
                                .post("/api/v1/tweets")
                                .contentType(MediaType.APPLICATION_JSON)
                                .content(objectMapper.writeValueAsBytes(addRequest))
                )
                .andExpect(status().isUnauthorized());
    }

    @Test
    void shouldNotCreateTweetWithShortMessage() throws Exception {
        // Пустое сообщение нарушает @NotBlank/@Size(min=10) → 400 от MethodArgumentNotValidException.
        TweetAddRequest addRequest = new TweetAddRequest("");

        restMockMvc
                .perform(
                        MockMvcRequestBuilders
                                .post("/api/v1/tweets")
                                .header("Authorization", "Bearer " + accessToken)
                                .contentType(MediaType.APPLICATION_JSON)
                                .content(objectMapper.writeValueAsBytes(addRequest))
                )
                .andExpect(status().isBadRequest());
    }

    // -- CRUD: read ---------------------------------------------------------

    @Test
    void shouldGetTweets() throws Exception {
        // Постраничный список твитов текущего пользователя:
        // твитс непустой массив, totalTweets — число, первая страница — true.
        restMockMvc
                .perform(
                        MockMvcRequestBuilders
                                .get("/api/v1/tweets")
                                .header("Authorization", "Bearer " + accessToken)
                                .param("page", "0")
                                .param("limit", "25")
                )
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.tweets").isArray())
                .andExpect(jsonPath("$.totalTweets").isNumber())
                .andExpect(jsonPath("$.isFirstPage").value(true));
    }

    // -- CRUD: delete -------------------------------------------------------

    @Test
    void shouldNotDeleteTweetWithoutAuth() throws Exception {
        // DELETE без токена → 401 на уровне SecurityFilterChain.
        restMockMvc
                .perform(
                        MockMvcRequestBuilders
                                .delete("/api/v1/tweets/1")
                )
                .andExpect(status().isUnauthorized());
    }

    @Test
    void shouldDeleteTweetById() throws Exception {
        // Создаём твит, затем удаляем его по возвращённому id.
        // id не хардкодим, чтобы тест не зависел от seed-данных.
        TweetAddRequest addRequest = new TweetAddRequest("Tweet to be fetched by id for testing");

        MvcResult createResult = restMockMvc
                .perform(
                        MockMvcRequestBuilders
                                .post("/api/v1/tweets")
                                .header("Authorization", "Bearer " + accessToken)
                                .contentType(MediaType.APPLICATION_JSON)
                                .content(objectMapper.writeValueAsBytes(addRequest))
                )
                .andExpect(status().isCreated())
                .andReturn();

        long tweetId = objectMapper.readTree(createResult.getResponse().getContentAsString())
                .get("id").asLong();

        restMockMvc
                .perform(
                        MockMvcRequestBuilders
                                .delete("/api/v1/tweets/" + tweetId)
                                .header("Authorization", "Bearer " + accessToken)
                )
                .andExpect(status().isOk());
    }

    // -- editTweet scenarios -------------------------------------------------

    @Test
    void shouldEditOwnTweet() throws Exception {
        // Создаём твит, затем редактируем его сообщение.
        long tweetId = createTweet("Original message that is long enough to pass validation");

        TweetEditRequest editRequest = new TweetEditRequest(
                tweetId,
                "Updated message content for the integration test scenario"
        );

        restMockMvc
                .perform(
                        MockMvcRequestBuilders
                                .put("/api/v1/tweets")
                                .header("Authorization", "Bearer " + accessToken)
                                .contentType(MediaType.APPLICATION_JSON)
                                .content(objectMapper.writeValueAsBytes(editRequest))
                )
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.id").value(tweetId))
                .andExpect(jsonPath("$.message").value("Updated message content for the integration test scenario"))
                .andExpect(jsonPath("$.modifiedTimestamp").isNotEmpty());
    }

    @Test
    void shouldNotEditTweetWithoutAuth() throws Exception {
        TweetEditRequest editRequest = new TweetEditRequest(1L, "Any message that is long enough for validation");

        restMockMvc
                .perform(
                        MockMvcRequestBuilders
                                .put("/api/v1/tweets")
                                .contentType(MediaType.APPLICATION_JSON)
                                .content(objectMapper.writeValueAsBytes(editRequest))
                )
                .andExpect(status().isUnauthorized());
    }

    @Test
    void shouldNotEditTweetWithBlankMessage() throws Exception {
        long tweetId = createTweet("Original message that is long enough to pass validation");

        TweetEditRequest editRequest = new TweetEditRequest(tweetId, "");

        restMockMvc
                .perform(
                        MockMvcRequestBuilders
                                .put("/api/v1/tweets")
                                .header("Authorization", "Bearer " + accessToken)
                                .contentType(MediaType.APPLICATION_JSON)
                                .content(objectMapper.writeValueAsBytes(editRequest))
                )
                .andExpect(status().isBadRequest());
    }

    @Test
    void shouldNotEditTweetWithMessageTooShort() throws Exception {
        long tweetId = createTweet("Original message that is long enough to pass validation");

        TweetEditRequest editRequest = new TweetEditRequest(tweetId, "short");

        restMockMvc
                .perform(
                        MockMvcRequestBuilders
                                .put("/api/v1/tweets")
                                .header("Authorization", "Bearer " + accessToken)
                                .contentType(MediaType.APPLICATION_JSON)
                                .content(objectMapper.writeValueAsBytes(editRequest))
                )
                .andExpect(status().isBadRequest());
    }

    @Test
    void shouldNotEditTweetThatDoesNotExist() throws Exception {
        // id, заведомо не существующий (LIKE 9_999_999_999L).
        TweetEditRequest editRequest = new TweetEditRequest(9_999_999_999L, "Updated message content for the integration test scenario");

        restMockMvc
                .perform(
                        MockMvcRequestBuilders
                                .put("/api/v1/tweets")
                                .header("Authorization", "Bearer " + accessToken)
                                .contentType(MediaType.APPLICATION_JSON)
                                .content(objectMapper.writeValueAsBytes(editRequest))
                )
                .andExpect(status().is4xxClientError());
    }

    @Test
    void shouldNotEditSomeoneElsesTweet() throws Exception {
        // Логинимся под другим seeded-юзером (alejandro_mclaughlin),
        // создаём твит от его имени, затем пытаемся отредактировать
        // его же из-под eduardo — guard фасада должен запретить.
        String alejandroToken = accessTokenFor("alejandro_mclaughlin@gmail.com");
        long foreignTweetId = createTweetAs(alejandroToken, "Tweet owned by alejandro for cross-user edit test");

        TweetEditRequest editRequest = new TweetEditRequest(
                foreignTweetId,
                "Trying to edit someone else's tweet which is long enough"
        );

        restMockMvc
                .perform(
                        MockMvcRequestBuilders
                                .put("/api/v1/tweets")
                                .header("Authorization", "Bearer " + accessToken)
                                .contentType(MediaType.APPLICATION_JSON)
                                .content(objectMapper.writeValueAsBytes(editRequest))
                )
                .andExpect(status().is4xxClientError());
    }

    // -- helpers ------------------------------------------------------------

    /**
     * Создаёт твит от имени текущего пользователя (eduardo)
     * и возвращает его id. Используется в сценариях edit, чтобы не зависеть
     * от seed-данных.
     */
    private long createTweet(String message) throws Exception {
        return createTweetAs(accessToken, message);
    }

    /**
     * Создаёт твит от имени произвольного пользователя по его access-токену
     * и возвращает id созданного твита. Нужен для сценариев с переключением
     * владельца (например, edit чужого твита).
     */
    private long createTweetAs(String token, String message) throws Exception {
        TweetAddRequest addRequest = new TweetAddRequest(message);
        MvcResult created = restMockMvc
                .perform(
                        MockMvcRequestBuilders
                                .post("/api/v1/tweets")
                                .header("Authorization", "Bearer " + token)
                                .contentType(MediaType.APPLICATION_JSON)
                                .content(objectMapper.writeValueAsBytes(addRequest))
                )
                .andExpect(status().isCreated())
                .andReturn();
        return objectMapper.readTree(created.getResponse().getContentAsString())
                .get("id").asLong();
    }

    /**
     * Получает access token для seeded-пользователя с известной парой
     * {@code (nickname, email)}. Пароль у всех seeded-юзеров — "password".
     */
    private String accessTokenFor(String email) throws Exception {
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
