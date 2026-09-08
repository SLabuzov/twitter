package dev.simpleapp.twitter.user.profile.usecase.impl;

import dev.simpleapp.twitter.security.api.model.CurrentUserApiModel;
import dev.simpleapp.twitter.user.profile.api.service.CurrentUserProfileApiService;
import dev.simpleapp.twitter.user.profile.mapper.UserProfileToUserProfileResponseMapper;
import dev.simpleapp.twitter.user.profile.model.UserProfile;
import dev.simpleapp.twitter.user.profile.service.UserProfileService;
import dev.simpleapp.twitter.user.profile.usecase.UserProfileEditUseCase;
import dev.simpleapp.twitter.user.profile.web.model.UserProfileEditRequest;
import dev.simpleapp.twitter.user.profile.web.model.UserProfileResponse;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

@Component
@Transactional
public class UserProfileEditUseCaseFacade implements UserProfileEditUseCase {

    private final CurrentUserProfileApiService currentUserProfileApiService;
    private final UserProfileService userProfileService;
    private final UserProfileToUserProfileResponseMapper mapper;

    public UserProfileEditUseCaseFacade(
            CurrentUserProfileApiService currentUserProfileApiService,
            UserProfileService userProfileService,
            UserProfileToUserProfileResponseMapper mapper) {
        this.currentUserProfileApiService = currentUserProfileApiService;
        this.userProfileService = userProfileService;

        this.mapper = mapper;
    }

    @Override
    public UserProfileResponse editUserProfile(UserProfileEditRequest editRequest, CurrentUserApiModel currentUserApiModel) {
        UserProfile currentProfile = this.currentUserProfileApiService.currentUserProfile(currentUserApiModel);

        if (!currentProfile.getNickname().equals(editRequest.nickname())) {
            currentProfile = this.userProfileService.updateNickname(currentProfile, editRequest.nickname());
        }

        if (!currentProfile.getImageLink().equals(editRequest.imageLink())) {
            currentProfile = this.userProfileService.updateImageLink(currentProfile, editRequest.imageLink());
        }

        return this.mapper.map(currentProfile);
    }
}

