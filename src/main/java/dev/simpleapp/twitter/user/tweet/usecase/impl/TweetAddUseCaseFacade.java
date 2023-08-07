package dev.simpleapp.twitter.user.tweet.usecase.impl;

import dev.simpleapp.twitter.user.tweet.mapper.TweetAddRequestToTweetMapper;
import dev.simpleapp.twitter.user.tweet.mapper.TweetToTweetResponseMapper;
import dev.simpleapp.twitter.user.tweet.model.Tweet;
import dev.simpleapp.twitter.user.tweet.service.TweetService;
import dev.simpleapp.twitter.user.tweet.usecase.TweetAddUseCase;
import dev.simpleapp.twitter.user.tweet.web.model.TweetAddRequest;
import dev.simpleapp.twitter.user.tweet.web.model.TweetResponse;
import org.springframework.stereotype.Component;

@Component
public class TweetAddUseCaseFacade implements TweetAddUseCase {

    private final TweetAddRequestToTweetMapper tweetAddRequestToTweetMapper;
    private final TweetToTweetResponseMapper tweetToTweetResponseMapper;
    private final TweetService tweetService;

    public TweetAddUseCaseFacade(TweetAddRequestToTweetMapper tweetAddRequestToTweetMapper,
                                 TweetToTweetResponseMapper tweetToTweetResponseMapper,
                                 TweetService tweetService) {
        this.tweetAddRequestToTweetMapper = tweetAddRequestToTweetMapper;
        this.tweetToTweetResponseMapper = tweetToTweetResponseMapper;
        this.tweetService = tweetService;
    }

    @Override
    public TweetResponse addTweet(TweetAddRequest addRequest) {
        Tweet mappedTweet = this.tweetAddRequestToTweetMapper.map(addRequest);
        Tweet createdTweet = this.tweetService.createTweet(mappedTweet);
        return this.tweetToTweetResponseMapper.map(createdTweet);
    }
}
