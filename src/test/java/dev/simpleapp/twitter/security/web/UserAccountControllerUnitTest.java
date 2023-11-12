package dev.simpleapp.twitter.security.web;

import com.fasterxml.jackson.databind.ObjectMapper;
import dev.simpleapp.twitter.security.usecase.RegisterUserAccountUseCase;
import dev.simpleapp.twitter.security.web.model.RegisterRequest;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.bind.MethodArgumentNotValidException;

import static org.junit.jupiter.api.Assertions.assertInstanceOf;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.doNothing;
import static org.mockito.Mockito.never;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@ExtendWith(MockitoExtension.class)
class UserAccountControllerUnitTest {

    MockMvc mockMvc;

    @Mock
    private RegisterUserAccountUseCase registerUserAccountUseCase;

    @InjectMocks
    private UserAccountController controller;

    @BeforeEach
    void setup() {
        this.mockMvc = MockMvcBuilders.standaloneSetup(controller).build();
    }

    @Test
    void shouldReturnStatusCreated() throws Exception {
        RegisterRequest registerRequest = new RegisterRequest(
                "username@gmail.com",
                "strongpassword"
        );

        doNothing()
                .when(registerUserAccountUseCase)
                .register(registerRequest);

        mockMvc.perform(
                        MockMvcRequestBuilders
                                .post("/api/v1/accounts/register")
                                .contentType(MediaType.APPLICATION_JSON)
                                .content(new ObjectMapper().writeValueAsBytes(registerRequest))
                )
                .andExpect(status().isCreated());

        Mockito.verify(registerUserAccountUseCase, times(1)).register(any());
        Mockito.verify(registerUserAccountUseCase, times(1)).register(registerRequest);
    }

    @Test
    void shouldReturn4xxStatusWhenInvalidRegisterRequest() throws Exception {
        RegisterRequest registerRequest = new RegisterRequest(
                "username",
                "strongpassword"
        );

        MvcResult mvcResult = mockMvc.perform(
                        MockMvcRequestBuilders
                                .post("/api/v1/accounts/register")
                                .contentType(MediaType.APPLICATION_JSON)
                                .content(new ObjectMapper().writeValueAsBytes(registerRequest))
                )
                .andExpect(status().is4xxClientError())
                .andReturn();

        Exception actualException = mvcResult.getResolvedException();

        assertNotNull(actualException);
        assertInstanceOf(MethodArgumentNotValidException.class, actualException);
        verify(registerUserAccountUseCase, never()).register(any());
    }
}