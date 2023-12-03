package dev.simpleapp.twitter.user.subscription.web.model;

import java.time.Instant;

public record FollowerResponse(
        long subscriptionId,
        long followerId,
        String followerNickname,
        String followerImageLink,
        Instant createdTimestamp
) {
}
