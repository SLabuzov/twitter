package dev.simpleapp.twitter.user.profile.usecase;

import dev.simpleapp.twitter.user.profile.web.model.UserProfileRegisterRequest;

public interface UserProfileRegisterUseCase {
    void registerUserProfile(UserProfileRegisterRequest registerRequest);
}
