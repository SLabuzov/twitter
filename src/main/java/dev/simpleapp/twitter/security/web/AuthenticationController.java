package dev.simpleapp.twitter.security.web;

import dev.simpleapp.twitter.security.usecase.AuthenticationUseCase;
import dev.simpleapp.twitter.security.web.model.AccessToken;
import dev.simpleapp.twitter.security.web.model.LoginRequest;
import jakarta.validation.Valid;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1/authentication")
public class AuthenticationController {

    private final AuthenticationUseCase authenticationUseCase;

    public AuthenticationController(AuthenticationUseCase authenticationUseCase) {
        this.authenticationUseCase = authenticationUseCase;
    }

    @PostMapping("/access_token")
    public AccessToken getToken(@Valid @RequestBody LoginRequest loginRequest) {
        return this.authenticationUseCase.authenticate(loginRequest);
    }
}
