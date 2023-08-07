package dev.simpleapp.twitter.user.profile.service;

import dev.simpleapp.twitter.user.profile.model.UserProfile;
import java.util.Optional;

public interface UserProfileService {
    void createUserProfile(UserProfile userProfile);

    Optional<UserProfile> findUserProfileById(long userProfileId);
}
