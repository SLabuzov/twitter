package dev.simpleapp.twitter.user.profile.api.service;

import dev.simpleapp.twitter.security.api.model.CurrentUserApiModel;
import dev.simpleapp.twitter.user.profile.model.UserProfile;

public interface CurrentUserProfileApiService {
    @Deprecated
    UserProfile currentUserProfile();

    UserProfile currentUserProfile(CurrentUserApiModel currentUserApiModel);
}
