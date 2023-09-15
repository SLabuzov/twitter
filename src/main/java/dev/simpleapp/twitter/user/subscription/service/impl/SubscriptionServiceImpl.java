package dev.simpleapp.twitter.user.subscription.service.impl;

import dev.simpleapp.twitter.user.profile.model.UserProfile;
import dev.simpleapp.twitter.user.subscription.model.Subscription;
import dev.simpleapp.twitter.user.subscription.repository.SubscriptionRepository;
import dev.simpleapp.twitter.user.subscription.service.SubscriptionService;
import org.springframework.stereotype.Service;

@Service
public class SubscriptionServiceImpl implements SubscriptionService {

    private final SubscriptionRepository subscriptionRepository;

    public SubscriptionServiceImpl(SubscriptionRepository subscriptionRepository) {
        this.subscriptionRepository = subscriptionRepository;
    }

    @Override
    public void createSubscription(Subscription subscription) {
        this.subscriptionRepository.save(subscription);
    }

    @Override
    public void deleteSubscription(Subscription subscription) {
        // TODO: мини дом. задание
    }

    @Override
    public boolean existsSubscription(Subscription subscription) {
        UserProfile follower = subscription.getFollower();
        UserProfile followed = subscription.getFollowed();

        return this.subscriptionRepository.existsByFollowerAndFollowed(follower, followed);
    }
}
