package dev.simpleapp.twitter.user.tweet.usecase.impl;

import dev.simpleapp.twitter.security.api.model.CurrentUserApiModel;
import dev.simpleapp.twitter.user.profile.api.service.CurrentUserProfileApiService;
import dev.simpleapp.twitter.user.tweet.mapper.TweetToTweetResponseMapper;
import dev.simpleapp.twitter.user.tweet.model.Tweet;
import dev.simpleapp.twitter.user.tweet.service.TweetService;
import dev.simpleapp.twitter.user.tweet.usecase.TweetAddUseCase;
import dev.simpleapp.twitter.user.tweet.web.model.TweetAddRequest;
import dev.simpleapp.twitter.user.tweet.web.model.TweetResponse;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

@Component
@Transactional
public class TweetAddUseCaseFacade implements TweetAddUseCase {

    private final CurrentUserProfileApiService currentUserProfileApiService;
    private final TweetToTweetResponseMapper tweetToTweetResponseMapper;
    private final TweetService tweetService;

    public TweetAddUseCaseFacade(CurrentUserProfileApiService currentUserProfileApiService,
                                 TweetToTweetResponseMapper tweetToTweetResponseMapper,
                                 TweetService tweetService) {
        this.currentUserProfileApiService = currentUserProfileApiService;
        this.tweetToTweetResponseMapper = tweetToTweetResponseMapper;
        this.tweetService = tweetService;
    }

    @Override
    public TweetResponse addTweet(TweetAddRequest addRequest, CurrentUserApiModel currentUserApiModel) {
        var owner = currentUserProfileApiService.currentUserProfile(currentUserApiModel);

        Tweet mappedTweet = new Tweet();
        mappedTweet.setUserProfile(owner);
        mappedTweet.setMessage(addRequest.message());

        Tweet createdTweet = this.tweetService.createTweet(mappedTweet);

        return this.tweetToTweetResponseMapper.map(createdTweet);
    }
}
