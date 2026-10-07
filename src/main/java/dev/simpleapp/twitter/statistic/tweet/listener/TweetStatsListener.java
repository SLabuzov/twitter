package dev.simpleapp.twitter.statistic.tweet.listener;

import dev.simpleapp.twitter.statistic.tweet.service.TweetStatsService;
import dev.simpleapp.twitter.user.tweet.api.event.TweetCreatedEvent;
import org.springframework.stereotype.Component;
import org.springframework.transaction.event.TransactionPhase;
import org.springframework.transaction.event.TransactionalEventListener;

@Component
public class TweetStatsListener {

    private final TweetStatsService tweetStatsService;

    public TweetStatsListener(TweetStatsService tweetStatsService) {
        this.tweetStatsService = tweetStatsService;
    }

    @TransactionalEventListener(phase = TransactionPhase.BEFORE_COMMIT)
    public void onTweetAdded(TweetCreatedEvent event) {
        tweetStatsService.initializeTweetStats(event.tweetId());
    }
}
