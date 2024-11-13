package dev.simpleapp.twitter.user.profile.mapper;

import dev.simpleapp.twitter.common.mapper.Mapper;
import dev.simpleapp.twitter.user.profile.model.UserProfile;
import dev.simpleapp.twitter.user.profile.web.model.UserProfilePageResponse;
import org.springframework.data.domain.Page;

public interface UserProfilePageToUserProfilePageResponseMapper extends Mapper<UserProfilePageResponse, Page<UserProfile>> {
}
