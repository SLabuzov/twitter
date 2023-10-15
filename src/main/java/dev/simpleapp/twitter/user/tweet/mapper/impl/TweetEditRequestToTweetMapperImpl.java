package dev.simpleapp.twitter.user.tweet.mapper.impl;

import dev.simpleapp.twitter.common.exception.TwitterException;
import dev.simpleapp.twitter.user.tweet.mapper.TweetEditRequestToTweetMapper;
import dev.simpleapp.twitter.user.tweet.model.Tweet;
import dev.simpleapp.twitter.user.tweet.service.TweetService;
import dev.simpleapp.twitter.user.tweet.web.model.TweetEditRequest;
import org.springframework.stereotype.Component;

@Component
public class TweetEditRequestToTweetMapperImpl implements TweetEditRequestToTweetMapper {

    private final TweetService tweetService;

    public TweetEditRequestToTweetMapperImpl(TweetService tweetService) {
        this.tweetService = tweetService;
    }

    @Override
    public Tweet map(TweetEditRequest request) {
        Tweet currentTweet = this.tweetService
                .findTweetById(request.id())
                .orElseThrow(() -> {
                    String errorMessage = String.format("Твит с id = %d не существует", request.id());
                    return new TwitterException(errorMessage);
                });

        currentTweet.setMessage(request.message());

        return currentTweet;
    }
}
