package dev.simpleapp.twitter.user.tweet.mapper;

import dev.simpleapp.twitter.common.mapper.Mapper;
import dev.simpleapp.twitter.user.tweet.model.Tweet;
import dev.simpleapp.twitter.user.tweet.web.model.TweetPageResponse;
import org.springframework.data.domain.Page;

public interface TweetPageToTweetPageResponseMapper
        extends Mapper<TweetPageResponse, Page<Tweet>> {
}
