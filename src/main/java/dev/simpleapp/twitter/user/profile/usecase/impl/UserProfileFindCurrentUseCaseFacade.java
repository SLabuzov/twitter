package dev.simpleapp.twitter.user.profile.usecase.impl;

import dev.simpleapp.twitter.user.profile.api.service.CurrentUserProfileApiService;
import dev.simpleapp.twitter.user.profile.mapper.UserProfileToUserProfileResponseMapper;
import dev.simpleapp.twitter.user.profile.model.UserProfile;
import dev.simpleapp.twitter.user.profile.usecase.UserProfileFindCurrentUseCase;
import dev.simpleapp.twitter.user.profile.web.model.UserProfileResponse;
import org.springframework.stereotype.Component;

@Component
public class UserProfileFindCurrentUseCaseFacade implements UserProfileFindCurrentUseCase {

    private final CurrentUserProfileApiService currentUserProfileApiService;
    private final UserProfileToUserProfileResponseMapper mapper;

    public UserProfileFindCurrentUseCaseFacade(CurrentUserProfileApiService currentUserProfileApiService,
                                               UserProfileToUserProfileResponseMapper mapper) {
        this.currentUserProfileApiService = currentUserProfileApiService;
        this.mapper = mapper;
    }

    @Override
    public UserProfileResponse currentUserProfile() {
        UserProfile currentUserProfile = currentUserProfileApiService.currentUserProfile();

        return mapper.map(currentUserProfile);
    }
}
