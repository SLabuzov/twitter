package dev.simpleapp.twitter.user.subscription.service;

import dev.simpleapp.twitter.user.subscription.model.Subscription;

public interface SubscriptionService {
    void createSubscription(Subscription subscription);

    void deleteSubscription(Subscription subscription);

    boolean existsSubscription(Subscription subscription);
}
