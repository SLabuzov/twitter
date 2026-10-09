package dev.simpleapp.twitter.user.subscription.service.impl;

import dev.simpleapp.twitter.user.subscription.model.FollowerSubscription;
import dev.simpleapp.twitter.user.subscription.model.Subscription;
import dev.simpleapp.twitter.user.subscription.repository.SubscriptionRepository;
import dev.simpleapp.twitter.user.subscription.service.SubscriptionService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
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
        long follower = subscription.getFollowerId();
        long followed = subscription.getFollowedId();

        this.subscriptionRepository
                .findByFollowerIdAndFollowedId(follower, followed)
                .ifPresent(this.subscriptionRepository::delete);
    }

    @Override
    public boolean existsSubscription(Subscription subscription) {
        long follower = subscription.getFollowerId();
        long followed = subscription.getFollowedId();

        return this.subscriptionRepository.existsByFollowerIdAndFollowedId(follower, followed);
    }

    @Override
    public Page<FollowerSubscription> findAllFollowerSubscriptions(long author, Pageable pageable) {
        return this.subscriptionRepository.findAllByFollowedId(author, pageable);
    }
}
