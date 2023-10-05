package dev.simpleapp.twitter.security.usecase;

import dev.simpleapp.twitter.security.web.model.AccessToken;
import dev.simpleapp.twitter.security.web.model.LoginRequest;

public interface AuthenticationUseCase {
    AccessToken authenticate(LoginRequest loginRequest);
}
