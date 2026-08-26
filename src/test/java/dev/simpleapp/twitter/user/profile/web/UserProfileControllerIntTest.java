package dev.simpleapp.twitter.user.profile.web;

import dev.simpleapp.twitter.security.web.model.LoginRequest;
import dev.simpleapp.twitter.security.web.model.RegisterRequest;
import dev.simpleapp.twitter.user.profile.web.model.UserProfileRegisterRequest;
import java.util.UUID;
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
class UserProfileControllerIntTest {

    @Autowired
    private MockMvc restMockMvc;

    @Autowired
    private ObjectMapper objectMapper;

    private String accessToken;

    @BeforeEach
    void setUp() throws Exception {
        // Use pre-seeded user that already has a profile
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

    @Test
    void shouldCreateUserProfile() throws Exception {
        // Register a new account first
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

        // Get token for the new user
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
    }

    @Test
    void shouldGetCurrentUserProfile() throws Exception {
        restMockMvc
                .perform(
                        MockMvcRequestBuilders
                                .get("/api/v1/user-profiles/current")
                                .header("Authorization", "Bearer " + accessToken)
                )
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.nickname").value("eduardo_jaskolski"))
                .andExpect(jsonPath("$.imageLink").isNotEmpty());
    }

    @Test
    void shouldGetCurrentUserProfileUnauthorized() throws Exception {
        restMockMvc
                .perform(
                        MockMvcRequestBuilders
                                .get("/api/v1/user-profiles/current")
                )
                .andExpect(status().isUnauthorized());
    }

    @Test
    void shouldSearchUserProfiles() throws Exception {
        restMockMvc
                .perform(
                        MockMvcRequestBuilders
                                .get("/api/v1/user-profiles")
                                .header("Authorization", "Bearer " + accessToken)
                                .param("page", "0")
                                .param("limit", "25")
                                .param("name", "eduardo")
                )
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.userProfiles").isArray())
                .andExpect(jsonPath("$.totalTweets").isNumber());
    }
}

