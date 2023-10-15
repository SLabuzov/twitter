package dev.simpleapp.twitter.user.profile.mapper;

import dev.simpleapp.twitter.common.mapper.Mapper;
import dev.simpleapp.twitter.user.profile.model.UserProfile;
import dev.simpleapp.twitter.user.profile.web.model.UserProfileRegisterRequest;

public interface UserProfileRegisterRequestToUserProfileMapper
        extends Mapper<UserProfile, UserProfileRegisterRequest> {
}
