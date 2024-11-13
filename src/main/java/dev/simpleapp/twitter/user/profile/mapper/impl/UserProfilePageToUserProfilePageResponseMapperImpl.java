package dev.simpleapp.twitter.user.profile.mapper.impl;

import dev.simpleapp.twitter.user.profile.mapper.UserProfilePageToUserProfilePageResponseMapper;
import dev.simpleapp.twitter.user.profile.mapper.UserProfileToUserProfileResponseMapper;
import dev.simpleapp.twitter.user.profile.model.UserProfile;
import dev.simpleapp.twitter.user.profile.web.model.UserProfilePageResponse;
import dev.simpleapp.twitter.user.profile.web.model.UserProfileResponse;
import java.util.Collection;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Component;

@Component
public class UserProfilePageToUserProfilePageResponseMapperImpl
        implements UserProfilePageToUserProfilePageResponseMapper {

    private final UserProfileToUserProfileResponseMapper mapper;

    public UserProfilePageToUserProfilePageResponseMapperImpl(UserProfileToUserProfileResponseMapper mapper) {
        this.mapper = mapper;
    }

    @Override
    public UserProfilePageResponse map(Page<UserProfile> page) {
        Collection<UserProfileResponse> userProfiles = page
                .stream()
                .map(this.mapper::map)
                .toList();

        return new UserProfilePageResponse(
                page.getTotalElements(),
                page.isFirst(),
                page.isLast(),
                userProfiles
        );
    }
}
