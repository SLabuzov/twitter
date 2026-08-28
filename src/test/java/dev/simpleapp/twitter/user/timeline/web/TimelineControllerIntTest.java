package dev.simpleapp.twitter.user.timeline.web;

import dev.simpleapp.twitter.security.web.model.LoginRequest;
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
class TimelineControllerIntTest {

    @Autowired
    private MockMvc restMockMvc;

    @Autowired
    private ObjectMapper objectMapper;

    private String accessToken;

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

        String responseBody = result.getResponse().getContentAsString();
        accessToken = objectMapper.readTree(responseBody).get("idToken").asString();
    }

    @Test
    void shouldGetTimeline() throws Exception {
        restMockMvc
                .perform(
                        MockMvcRequestBuilders
                                .get("/api/v1/timelines")
                                .header("Authorization", "Bearer " + accessToken)
                                .param("page", "0")
                                .param("limit", "25")
                )
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.tweets").isArray())
                .andExpect(jsonPath("$.totalTweets").isNumber())
                .andExpect(jsonPath("$.isFirstPage").value(true));
    }

    @Test
    void shouldGetTimelineUnauthorized() throws Exception {
        restMockMvc
                .perform(
                        MockMvcRequestBuilders
                                .get("/api/v1/timelines")
                                .param("page", "0")
                                .param("limit", "25")
                )
                .andExpect(status().isUnauthorized());
    }

    @Test
    void shouldGetTimelineWithPagination() throws Exception {
        restMockMvc
                .perform(
                        MockMvcRequestBuilders
                                .get("/api/v1/timelines")
                                .header("Authorization", "Bearer " + accessToken)
                                .param("page", "0")
                                .param("limit", "25")
                )
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.tweets").isArray())
                .andExpect(jsonPath("$.isFirstPage").value(true));
    }
}

