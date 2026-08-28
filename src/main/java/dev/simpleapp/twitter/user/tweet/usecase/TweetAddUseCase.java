package dev.simpleapp.twitter.user.tweet.usecase;

import dev.simpleapp.twitter.security.api.model.CurrentUserApiModel;
import dev.simpleapp.twitter.user.tweet.web.model.TweetAddRequest;
import dev.simpleapp.twitter.user.tweet.web.model.TweetResponse;

public interface TweetAddUseCase {
    TweetResponse addTweet(TweetAddRequest addRequest, CurrentUserApiModel currentUserApiModel);
}
