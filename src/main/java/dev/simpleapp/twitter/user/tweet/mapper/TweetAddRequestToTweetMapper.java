package dev.simpleapp.twitter.user.tweet.mapper;

import dev.simpleapp.twitter.common.mapper.Mapper;
import dev.simpleapp.twitter.user.tweet.model.Tweet;
import dev.simpleapp.twitter.user.tweet.web.model.TweetAddRequest;

public interface TweetAddRequestToTweetMapper extends Mapper<Tweet, TweetAddRequest> {
}
