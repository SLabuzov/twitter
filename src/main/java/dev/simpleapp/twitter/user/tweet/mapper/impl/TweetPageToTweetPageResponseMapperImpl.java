package dev.simpleapp.twitter.user.tweet.mapper.impl;

import dev.simpleapp.twitter.user.tweet.mapper.TweetPageToTweetPageResponseMapper;
import dev.simpleapp.twitter.user.tweet.mapper.TweetToTweetResponseMapper;
import dev.simpleapp.twitter.user.tweet.model.Tweet;
import dev.simpleapp.twitter.user.tweet.web.model.TweetPageResponse;
import dev.simpleapp.twitter.user.tweet.web.model.TweetResponse;
import java.util.Collection;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Component;

@Component
public class TweetPageToTweetPageResponseMapperImpl implements TweetPageToTweetPageResponseMapper {

    private final TweetToTweetResponseMapper tweetToTweetResponseMapper;

    public TweetPageToTweetPageResponseMapperImpl(TweetToTweetResponseMapper tweetToTweetResponseMapper) {
        this.tweetToTweetResponseMapper = tweetToTweetResponseMapper;
    }

    @Override
    public TweetPageResponse map(Page<Tweet> source) {
        Collection<TweetResponse> tweetPageResponses = source
                .stream()
                .map(this.tweetToTweetResponseMapper::map)
                .toList();

        return new TweetPageResponse(
                source.getTotalElements(),
                source.isFirst(),
                source.isLast(),
                tweetPageResponses
        );
    }
}
