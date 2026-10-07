package dev.simpleapp.twitter.statistic.tweet.service.impl;

import dev.simpleapp.twitter.statistic.tweet.model.TweetStats;
import dev.simpleapp.twitter.statistic.tweet.repository.TweetStatsRepository;
import dev.simpleapp.twitter.statistic.tweet.service.TweetStatsService;
import org.springframework.stereotype.Service;

@Service
public class TweetStatsServiceImpl implements TweetStatsService {

    private final TweetStatsRepository tweetStatsRepository;

    public TweetStatsServiceImpl(TweetStatsRepository tweetStatsRepository) {
        this.tweetStatsRepository = tweetStatsRepository;
    }

    @Override
    public void initializeTweetStats(long tweetId) {
        if (!tweetStatsRepository.existsById(tweetId)) {
            tweetStatsRepository.save(new TweetStats(tweetId));
        }
    }

}
