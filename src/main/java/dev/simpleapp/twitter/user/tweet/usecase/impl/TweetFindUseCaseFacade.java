package dev.simpleapp.twitter.user.tweet.usecase.impl;

import dev.simpleapp.twitter.user.profile.api.service.CurrentUserProfileApiService;
import dev.simpleapp.twitter.user.profile.model.UserProfile;
import dev.simpleapp.twitter.user.tweet.mapper.TweetPageToTweetPageResponseMapper;
import dev.simpleapp.twitter.user.tweet.model.Tweet;
import dev.simpleapp.twitter.user.tweet.service.TweetService;
import dev.simpleapp.twitter.user.tweet.usecase.TweetFindUseCase;
import dev.simpleapp.twitter.user.tweet.web.model.TweetFindRequest;
import dev.simpleapp.twitter.user.tweet.web.model.TweetPageResponse;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Component;

import static dev.simpleapp.twitter.user.tweet.model.Tweet_.CREATED_TIMESTAMP;

@Component
public class TweetFindUseCaseFacade implements TweetFindUseCase {

    private final CurrentUserProfileApiService currentUserProfileApiService;
    private final TweetService tweetService;
    private final TweetPageToTweetPageResponseMapper tweetPageToTweetPageResponseMapper;

    public TweetFindUseCaseFacade(CurrentUserProfileApiService currentUserProfileApiService,
                                  TweetService tweetService,
                                  TweetPageToTweetPageResponseMapper tweetPageToTweetPageResponseMapper) {
        this.currentUserProfileApiService = currentUserProfileApiService;
        this.tweetService = tweetService;
        this.tweetPageToTweetPageResponseMapper = tweetPageToTweetPageResponseMapper;
    }

    @Override
    public TweetPageResponse findTweets(TweetFindRequest findRequest) {
        UserProfile owner = this.currentUserProfileApiService.currentUserProfile();

        Sort sort = Sort.by(Sort.Direction.DESC, CREATED_TIMESTAMP);

        Pageable pageable = PageRequest.of(findRequest.page(), findRequest.limit(), sort);

        Page<Tweet> pageableTweetResult = this.tweetService.findAllTweets(owner, pageable);

        return this.tweetPageToTweetPageResponseMapper.map(pageableTweetResult);
    }
}
