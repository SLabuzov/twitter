package dev.simpleapp.twitter.user.tweet.mapper;

import dev.simpleapp.twitter.common.mapper.Mapper;
import dev.simpleapp.twitter.user.tweet.model.Tweet;
import dev.simpleapp.twitter.user.tweet.web.model.TweetEditRequest;

public interface TweetEditRequestToTweetMapper extends Mapper<Tweet, TweetEditRequest> {
}
