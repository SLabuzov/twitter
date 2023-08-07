package dev.simpleapp.twitter.user.tweet.mapper.impl;

import dev.simpleapp.twitter.user.profile.api.service.CurrentUserProfileApiService;
import dev.simpleapp.twitter.user.tweet.mapper.TweetAddRequestToTweetMapper;
import dev.simpleapp.twitter.user.tweet.model.Tweet;
import dev.simpleapp.twitter.user.tweet.web.model.TweetAddRequest;
import org.springframework.stereotype.Component;

@Component
public class TweetAddRequestToTweetMapperImpl implements TweetAddRequestToTweetMapper {

    private final CurrentUserProfileApiService currentUserProfileApiService;

    public TweetAddRequestToTweetMapperImpl(CurrentUserProfileApiService currentUserProfileApiService) {
        this.currentUserProfileApiService = currentUserProfileApiService;
    }

    @Override
    public Tweet map(TweetAddRequest request) {

        Tweet tweet = new Tweet();
        tweet.setUserProfile(this.currentUserProfileApiService.currentUserProfile());
        tweet.setMessage(request.message());

        return tweet;
    }
}
