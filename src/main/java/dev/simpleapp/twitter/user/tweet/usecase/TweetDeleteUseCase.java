package dev.simpleapp.twitter.user.tweet.usecase;

import dev.simpleapp.twitter.security.api.model.CurrentUserApiModel;

public interface TweetDeleteUseCase {
    void deleteTweet(long tweetId, CurrentUserApiModel currentUserApiModel);
}
