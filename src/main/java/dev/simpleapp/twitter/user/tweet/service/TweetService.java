package dev.simpleapp.twitter.user.tweet.service;

import dev.simpleapp.twitter.user.tweet.model.Tweet;

public interface TweetService {
    Tweet createTweet(Tweet tweet);
}
