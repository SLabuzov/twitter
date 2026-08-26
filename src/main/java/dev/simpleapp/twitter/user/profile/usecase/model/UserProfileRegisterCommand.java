package dev.simpleapp.twitter.user.profile.usecase.model;

import dev.simpleapp.twitter.security.api.model.CurrentUserApiModel;

public record UserProfileRegisterCommand(
        CurrentUserApiModel currentUserApiModel,
        String nickname,
        String imageLink
) {
}
