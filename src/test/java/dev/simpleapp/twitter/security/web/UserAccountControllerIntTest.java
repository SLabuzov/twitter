package dev.simpleapp.twitter.security.web;

import com.fasterxml.jackson.databind.ObjectMapper;
import dev.simpleapp.twitter.common.exception.TwitterException;
import dev.simpleapp.twitter.security.repository.UserAccountRepository;
import dev.simpleapp.twitter.security.web.model.RegisterRequest;
import java.util.UUID;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;

import static org.assertj.core.api.AssertionsForClassTypes.assertThat;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;


@SpringBootTest
@AutoConfigureMockMvc
class UserAccountControllerIntTest {

    @Autowired
    private MockMvc restMockMvc;

    @Autowired
    private UserAccountRepository userAccountRepository;

    @Test
    void shouldCreateUserAccount() throws Exception {
        final String username = validUsername();
        boolean existsBefore = userAccountRepository.existsByUsername(username);
        assertFalse(existsBefore);

        RegisterRequest registerRequest = new RegisterRequest(
                username,
                "strong_password"
        );

        restMockMvc
                .perform(
                        MockMvcRequestBuilders
                                .post("/api/v1/accounts/register")
                                .contentType(MediaType.APPLICATION_JSON)
                                .content(new ObjectMapper().writeValueAsBytes(registerRequest))
                )
                .andExpect(status().isCreated());

        boolean existsAfter = userAccountRepository.existsByUsername(username);
        assertTrue(existsAfter);
    }

    @Test
    void shouldNotCreateUserAccountWithExistingUsername() throws Exception {
        final String username = validUsername();
        boolean existsBefore = userAccountRepository.existsByUsername(username);
        assertFalse(existsBefore);

        RegisterRequest registerRequest = new RegisterRequest(
                username,
                "strong_password"
        );

        restMockMvc
                .perform(
                        MockMvcRequestBuilders
                                .post("/api/v1/accounts/register")
                                .contentType(MediaType.APPLICATION_JSON)
                                .content(new ObjectMapper().writeValueAsBytes(registerRequest))
                )
                .andExpect(status().isCreated());

        boolean existsAfter = userAccountRepository.existsByUsername(username);
        assertTrue(existsAfter);

        MvcResult mvcResult = restMockMvc
                .perform(
                        MockMvcRequestBuilders
                                .post("/api/v1/accounts/register")
                                .contentType(MediaType.APPLICATION_JSON)
                                .content(new ObjectMapper().writeValueAsBytes(registerRequest))
                )
                .andExpect(status().isBadRequest())
                .andReturn();

        Exception resolvedException = mvcResult.getResolvedException();
        assertNotNull(resolvedException);
        assertThat(resolvedException).isExactlyInstanceOf(TwitterException.class);
        assertEquals("Account with this username already exists", resolvedException.getMessage());
    }

    @Test
    void shouldNotCreateUserAccountWhenInvalidRegisterRequest() throws Exception {
        final String username = invalidUsername();
        boolean existsBefore = userAccountRepository.existsByUsername(username);
        assertFalse(existsBefore);

        RegisterRequest registerRequest = new RegisterRequest(
                username,
                "strong_password"
        );

        restMockMvc
                .perform(
                        MockMvcRequestBuilders
                                .post("/api/v1/accounts/register")
                                .contentType(MediaType.APPLICATION_JSON)
                                .content(new ObjectMapper().writeValueAsBytes(registerRequest))
                )
                .andExpect(status().isBadRequest());

        boolean existsAfter = userAccountRepository.existsByUsername(username);
        assertFalse(existsAfter);
    }

    private static String validUsername() {
        String[] uuidParts = UUID.randomUUID().toString().split("-");
        return String.format("%s-%s@gmail.com", uuidParts[0], uuidParts[1]);
    }

    private static String invalidUsername() {
        String[] uuidParts = UUID.randomUUID().toString().split("-");
        return String.format("%s-%s", uuidParts[0], uuidParts[1]);
    }
}
