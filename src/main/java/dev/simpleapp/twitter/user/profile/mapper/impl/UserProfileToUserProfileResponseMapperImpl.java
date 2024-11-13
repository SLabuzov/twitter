package dev.simpleapp.twitter.user.profile.mapper.impl;

import dev.simpleapp.twitter.user.profile.mapper.UserProfileToUserProfileResponseMapper;
import dev.simpleapp.twitter.user.profile.model.UserProfile;
import dev.simpleapp.twitter.user.profile.web.model.UserProfileResponse;
import org.springframework.stereotype.Component;

@Component
public class UserProfileToUserProfileResponseMapperImpl
        implements UserProfileToUserProfileResponseMapper {

    @Override
    public UserProfileResponse map(UserProfile source) {
        return new UserProfileResponse(
                source.getId(),
                source.getNickname(),
                source.getImageLink()
        );
    }
}
