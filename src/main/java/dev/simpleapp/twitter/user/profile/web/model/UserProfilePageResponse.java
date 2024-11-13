package dev.simpleapp.twitter.user.profile.web.model;


import java.util.Collection;

public record UserProfilePageResponse(
        long totalTweets,
        boolean isFirstPage,
        boolean isLastPage,
        Collection<UserProfileResponse> userProfiles
) {
}
