package dev.simpleapp.twitter.user.tweet.api.service.impl;

import dev.simpleapp.twitter.user.profile.model.UserProfile;
import dev.simpleapp.twitter.user.tweet.api.service.TweetApiService;
import dev.simpleapp.twitter.user.tweet.model.Tweet;
import dev.simpleapp.twitter.user.tweet.service.TweetService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
public class TweetApiServiceImpl implements TweetApiService {

    private final TweetService tweetService;

    public TweetApiServiceImpl(TweetService tweetService) {
        this.tweetService = tweetService;
    }

    @Override
    public Page<Tweet> findAllFollowerTweets(UserProfile follower, Pageable pageable) {
        return tweetService.findAllFollowerTweets(follower, pageable);
    }
}
