package dev.simpleapp.twitter.user.profile.mapper.impl;

import dev.simpleapp.twitter.security.api.model.CurrentUserApiModel;
import dev.simpleapp.twitter.user.profile.mapper.UserProfileRegisterCommandToUserProfileMapper;
import dev.simpleapp.twitter.user.profile.model.UserProfile;
import dev.simpleapp.twitter.user.profile.usecase.model.UserProfileRegisterCommand;
import org.springframework.stereotype.Component;

@Component
public class UserProfileRegisterRequestToUserProfileMapperImpl
        implements UserProfileRegisterCommandToUserProfileMapper {

    @Override
    public UserProfile map(UserProfileRegisterCommand registerCommand) {

        CurrentUserApiModel currentUserApiModel = registerCommand.currentUserApiModel();

        UserProfile userProfile = new UserProfile();
        userProfile.setId(currentUserApiModel.userAccountId());
        userProfile.setNickname(registerCommand.nickname());
        userProfile.setImageLink(registerCommand.imageLink());

        return userProfile;
    }
}
