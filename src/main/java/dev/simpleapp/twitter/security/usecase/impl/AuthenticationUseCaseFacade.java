package dev.simpleapp.twitter.security.usecase.impl;

import dev.simpleapp.twitter.security.service.AccessTokenService;
import dev.simpleapp.twitter.security.usecase.AuthenticationUseCase;
import dev.simpleapp.twitter.security.web.model.AccessToken;
import dev.simpleapp.twitter.security.web.model.LoginRequest;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Component;

@Component
public class AuthenticationUseCaseFacade implements AuthenticationUseCase {

    private final AuthenticationManager authenticationManager;
    private final AccessTokenService accessTokenService;

    public AuthenticationUseCaseFacade(AuthenticationManager authenticationManager,
                                       AccessTokenService accessTokenService) {
        this.authenticationManager = authenticationManager;
        this.accessTokenService = accessTokenService;
    }

    @Override
    public AccessToken authenticate(LoginRequest loginRequest) {
        Authentication authenticationToken = new UsernamePasswordAuthenticationToken(
                loginRequest.username(),
                loginRequest.password()
        );

        Authentication authentication = this.authenticationManager.authenticate(authenticationToken);

        String idToken = this.accessTokenService.generateIdToken(authentication);

        return new AccessToken(idToken);
    }
}
