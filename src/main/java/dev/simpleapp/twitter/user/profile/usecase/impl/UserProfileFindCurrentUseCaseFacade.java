package dev.simpleapp.twitter.user.profile.usecase.impl;

import dev.simpleapp.twitter.security.api.model.CurrentUserApiModel;
import dev.simpleapp.twitter.user.profile.mapper.UserProfileToUserProfileResponseMapper;
import dev.simpleapp.twitter.user.profile.model.UserProfile;
import dev.simpleapp.twitter.user.profile.service.UserProfileService;
import dev.simpleapp.twitter.user.profile.usecase.UserProfileFindCurrentUseCase;
import dev.simpleapp.twitter.user.profile.web.model.UserProfileResponse;
import org.springframework.stereotype.Component;

@Component
public class UserProfileFindCurrentUseCaseFacade implements UserProfileFindCurrentUseCase {

    private final UserProfileService userProfileService;
    private final UserProfileToUserProfileResponseMapper mapper;

    public UserProfileFindCurrentUseCaseFacade(UserProfileService userProfileService,
                                               UserProfileToUserProfileResponseMapper mapper) {
        this.userProfileService = userProfileService;
        this.mapper = mapper;
    }

    @Override
    public UserProfileResponse currentUserProfile(CurrentUserApiModel currentUserApiModel) {
        UserProfile currentUserProfile = userProfileService
                .findUserProfileByIdRequired(currentUserApiModel.userAccountId());

        return mapper.map(currentUserProfile);
    }
}
