package dev.simpleapp.twitter.user.tweet.mapper.impl;

import dev.simpleapp.twitter.user.tweet.mapper.TweetToTweetResponseMapper;
import dev.simpleapp.twitter.user.tweet.model.Tweet;
import dev.simpleapp.twitter.user.tweet.web.model.TweetResponse;
import org.springframework.stereotype.Component;

@Component
public class TweetToTweetResponseMapperImpl implements TweetToTweetResponseMapper {
    @Override
    public TweetResponse map(Tweet model) {
        return new TweetResponse(
                model.getId(),
                model.getMessage(),
                model.getCreatedTimestamp(),
                model.getModifiedTimestamp()
        );
    }
}
