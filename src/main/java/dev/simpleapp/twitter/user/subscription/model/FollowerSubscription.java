package dev.simpleapp.twitter.user.subscription.model;

import dev.simpleapp.twitter.user.profile.model.UserProfile;
import java.time.Instant;

public interface FollowerSubscription {
    long getId();
    UserProfile getFollower();
    Instant getCreatedTimestamp();
}
