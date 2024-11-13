package dev.simpleapp.twitter.user.profile.service;

import dev.simpleapp.twitter.user.profile.model.UserProfile;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface UserProfileService {
    void createUserProfile(UserProfile userProfile);

    UserProfile findUserProfileByIdRequired(long userProfileId);

    Page<UserProfile> findAllUserProfiles(Pageable pageable);

    Page<UserProfile> findAllUserProfilesNicknameLike(String searchingName,Pageable pageable);
}
