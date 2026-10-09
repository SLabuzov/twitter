package dev.simpleapp.twitter.user.profile.service.impl;

import dev.simpleapp.twitter.security.api.model.CurrentUserApiModel;
import dev.simpleapp.twitter.user.profile.api.model.ProfileApi;
import dev.simpleapp.twitter.user.profile.api.service.CurrentUserProfileApiService;
import dev.simpleapp.twitter.user.profile.model.UserProfile;
import dev.simpleapp.twitter.user.profile.service.UserProfileService;
import org.springframework.stereotype.Service;

@Service
public class CurrentUserProfileApiServiceImpl
        implements CurrentUserProfileApiService {

    private final UserProfileService userProfileService;

    public CurrentUserProfileApiServiceImpl(UserProfileService userProfileService) {
        this.userProfileService = userProfileService;
    }

    @Override
    public ProfileApi currentUserProfile(CurrentUserApiModel currentUserApiModel) {
        UserProfile profile = this.userProfileService
                .findUserProfileByIdRequired(currentUserApiModel.userAccountId());

        return new ProfileApi(
                profile.getId(),
                profile.getNickname()
        );
    }
}
