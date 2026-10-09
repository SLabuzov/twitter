package dev.simpleapp.twitter.user.profile.api.service;

import dev.simpleapp.twitter.user.profile.api.model.ProfileApi;

public interface UserProfileApiService {
    ProfileApi findUserProfileById(long userProfileId);
}
