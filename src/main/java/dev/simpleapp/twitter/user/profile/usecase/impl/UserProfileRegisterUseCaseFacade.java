package dev.simpleapp.twitter.user.profile.usecase.impl;

import dev.simpleapp.twitter.user.profile.mapper.UserProfileRegisterCommandToUserProfileMapper;
import dev.simpleapp.twitter.user.profile.model.UserProfile;
import dev.simpleapp.twitter.user.profile.service.UserProfileService;
import dev.simpleapp.twitter.user.profile.usecase.UserProfileRegisterUseCase;
import dev.simpleapp.twitter.user.profile.usecase.model.UserProfileRegisterCommand;
import org.springframework.stereotype.Component;

@Component
public class UserProfileRegisterUseCaseFacade implements UserProfileRegisterUseCase {

    private final UserProfileService userProfileService;
    private final UserProfileRegisterCommandToUserProfileMapper mapper;

    public UserProfileRegisterUseCaseFacade(UserProfileService userProfileService,
                                            UserProfileRegisterCommandToUserProfileMapper mapper) {
        this.userProfileService = userProfileService;
        this.mapper = mapper;
    }

    @Override
    public void registerUserProfile(UserProfileRegisterCommand registerCommand) {
        UserProfile userProfile = this.mapper.map(registerCommand);
        this.userProfileService.createUserProfile(userProfile);
    }
}
