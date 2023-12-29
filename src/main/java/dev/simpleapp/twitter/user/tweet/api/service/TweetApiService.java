package dev.simpleapp.twitter.user.tweet.api.service;

import dev.simpleapp.twitter.user.profile.model.UserProfile;
import dev.simpleapp.twitter.user.tweet.model.Tweet;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface TweetApiService {
    Page<Tweet> findAllFollowerTweets(UserProfile follower, Pageable pageable);
}
