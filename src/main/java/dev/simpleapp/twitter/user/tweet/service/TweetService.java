package dev.simpleapp.twitter.user.tweet.service;

import dev.simpleapp.twitter.user.profile.model.UserProfile;
import dev.simpleapp.twitter.user.tweet.model.Tweet;
import java.util.Optional;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface TweetService {
    Tweet createTweet(Tweet tweet);

    Tweet updateTweet(Tweet tweet);

    Optional<Tweet> findTweetById(long tweetId);

    void deleteTweet(long tweetId);

    Page<Tweet> findAllTweets(UserProfile owner, Pageable pageable);

    Page<Tweet> findAllFollowerTweets(UserProfile follower, Pageable pageable);
}
