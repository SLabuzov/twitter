package dev.simpleapp.twitter.security.usecase;

import dev.simpleapp.twitter.security.web.model.RegisterRequest;

public interface RegisterUserAccountUseCase {
    void register(RegisterRequest registerRequest);
}
