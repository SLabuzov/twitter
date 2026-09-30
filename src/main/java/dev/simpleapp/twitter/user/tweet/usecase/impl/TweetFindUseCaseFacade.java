package dev.simpleapp.twitter.user.tweet.usecase.impl;

import dev.simpleapp.twitter.common.dto.PageResponse;
import dev.simpleapp.twitter.security.api.model.CurrentUserApiModel;
import dev.simpleapp.twitter.user.profile.api.service.CurrentUserProfileApiService;
import dev.simpleapp.twitter.user.profile.model.UserProfile;
import dev.simpleapp.twitter.user.tweet.mapper.TweetToTweetResponseMapper;
import dev.simpleapp.twitter.user.tweet.model.Tweet;
import dev.simpleapp.twitter.user.tweet.service.TweetService;
import dev.simpleapp.twitter.user.tweet.usecase.TweetFindUseCase;
import dev.simpleapp.twitter.user.tweet.web.model.TweetFindRequest;
import dev.simpleapp.twitter.user.tweet.web.model.TweetResponse;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import static dev.simpleapp.twitter.user.tweet.model.Tweet_.CREATED_TIMESTAMP;

@Component
@Transactional
public class TweetFindUseCaseFacade implements TweetFindUseCase {

    private final CurrentUserProfileApiService currentUserProfileApiService;
    private final TweetService tweetService;
    private final TweetToTweetResponseMapper tweetToTweetResponseMapper;

    public TweetFindUseCaseFacade(CurrentUserProfileApiService currentUserProfileApiService,
                                  TweetService tweetService,
                                  TweetToTweetResponseMapper tweetToTweetResponseMapper) {
        this.currentUserProfileApiService = currentUserProfileApiService;
        this.tweetService = tweetService;
        this.tweetToTweetResponseMapper = tweetToTweetResponseMapper;
    }

    @Override
    public PageResponse<TweetResponse> findTweets(TweetFindRequest findRequest, CurrentUserApiModel currentUserApiModel) {
        UserProfile owner = this.currentUserProfileApiService.currentUserProfile(currentUserApiModel);

        Sort sort = Sort.by(Sort.Direction.DESC, CREATED_TIMESTAMP);

        Pageable pageable = PageRequest.of(findRequest.page(), findRequest.limit(), sort);

        Page<Tweet> pageableTweetResult = this.tweetService.findAllTweets(owner, pageable);

        List<TweetResponse> tweets = pageableTweetResult
                .stream()
                .map(this.tweetToTweetResponseMapper::map)
                .toList();

        return PageResponse.from(pageableTweetResult, tweets);
    }
}
