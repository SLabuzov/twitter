package dev.simpleapp.twitter.user.subscription.model;

import java.time.Instant;

public interface FollowerSubscription {
    long getId();

    long getFollowerId();

    Instant getCreatedTimestamp();
}
