package dev.simpleapp.twitter.user.subscription.service;

import dev.simpleapp.twitter.user.profile.model.UserProfile;
import dev.simpleapp.twitter.user.subscription.model.FollowerSubscription;
import dev.simpleapp.twitter.user.subscription.model.Subscription;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface SubscriptionService {
    void createSubscription(Subscription subscription);

    void deleteSubscription(Subscription subscription);

    boolean existsSubscription(Subscription subscription);

    Page<FollowerSubscription> findAllFollowerSubscriptions(UserProfile author, Pageable pageable);
}
