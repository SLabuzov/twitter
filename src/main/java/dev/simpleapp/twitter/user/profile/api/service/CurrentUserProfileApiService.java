package dev.simpleapp.twitter.user.profile.api.service;

import dev.simpleapp.twitter.security.api.model.CurrentUserApiModel;
import dev.simpleapp.twitter.user.profile.api.model.ProfileApi;

public interface CurrentUserProfileApiService {
    ProfileApi currentUserProfile(CurrentUserApiModel currentUserApiModel);
}
