package dev.simpleapp.twitter.user.profile.usecase;

import dev.simpleapp.twitter.user.profile.web.model.UserProfileResponse;

public interface UserProfileFindCurrentUseCase {
    UserProfileResponse currentUserProfile();
}
