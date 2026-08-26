package dev.simpleapp.twitter.user.profile.usecase;

import dev.simpleapp.twitter.user.profile.usecase.model.UserProfileRegisterCommand;

public interface UserProfileRegisterUseCase {
    void registerUserProfile(UserProfileRegisterCommand registerCommand);
}
