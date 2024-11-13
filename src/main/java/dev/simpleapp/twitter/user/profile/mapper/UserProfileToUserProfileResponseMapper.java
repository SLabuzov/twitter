package dev.simpleapp.twitter.user.profile.mapper;

import dev.simpleapp.twitter.common.mapper.Mapper;
import dev.simpleapp.twitter.user.profile.model.UserProfile;
import dev.simpleapp.twitter.user.profile.web.model.UserProfileResponse;

public interface UserProfileToUserProfileResponseMapper
        extends Mapper<UserProfileResponse, UserProfile> {
}
