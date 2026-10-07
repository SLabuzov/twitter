package dev.simpleapp.twitter.statistic.profile.listener;

import dev.simpleapp.twitter.statistic.profile.service.ProfileStatsService;
import dev.simpleapp.twitter.user.profile.api.event.ProfileCreatedEvent;
import dev.simpleapp.twitter.user.subscription.api.event.SubscriptionCreatedEvent;
import dev.simpleapp.twitter.user.subscription.api.event.SubscriptionDeletedEvent;
import dev.simpleapp.twitter.user.tweet.api.event.TweetCreatedEvent;
import dev.simpleapp.twitter.user.tweet.api.event.TweetDeletedEvent;
import org.springframework.stereotype.Component;
import org.springframework.transaction.event.TransactionPhase;
import org.springframework.transaction.event.TransactionalEventListener;

@Component
public class ProfileStatsListener {

    private final ProfileStatsService statsService;

    public ProfileStatsListener(ProfileStatsService statsService) {
        this.statsService = statsService;
    }

    @TransactionalEventListener(phase = TransactionPhase.BEFORE_COMMIT)
    public void onProfileCreated(ProfileCreatedEvent event) {
        statsService.initializeProfileStats(event.profileId());
    }

    @TransactionalEventListener(phase = TransactionPhase.BEFORE_COMMIT)
    public void onSubscriptionCreated(SubscriptionCreatedEvent event) {
        statsService.onSubscribed(event.followerId(), event.followerId());
    }

    @TransactionalEventListener(phase = TransactionPhase.BEFORE_COMMIT)
    public void onSubscriptionDeleted(SubscriptionDeletedEvent event) {
        statsService.onUnsubscribed(event.followerId(), event.followerId());
    }

    @TransactionalEventListener(phase = TransactionPhase.BEFORE_COMMIT)
    public void onTweetCreated(TweetCreatedEvent event) {
        statsService.onTweetAdded(event.authorId());
    }

    @TransactionalEventListener(phase = TransactionPhase.BEFORE_COMMIT)
    public void onTweetDeleted(TweetDeletedEvent event) {
        statsService.onTweetDeleted(event.authorId());
    }
}
