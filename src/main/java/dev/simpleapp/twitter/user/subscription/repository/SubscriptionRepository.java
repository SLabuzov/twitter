package dev.simpleapp.twitter.user.subscription.repository;

import dev.simpleapp.twitter.user.profile.model.UserProfile;
import dev.simpleapp.twitter.user.subscription.model.Subscription;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SubscriptionRepository extends JpaRepository<Subscription, Long> {
    boolean existsByFollowerAndFollowed(UserProfile follower, UserProfile followed);
}
