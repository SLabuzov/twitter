package dev.simpleapp.twitter.user.tweet.usecase;

import dev.simpleapp.twitter.user.tweet.web.model.TweetEditRequest;
import dev.simpleapp.twitter.user.tweet.web.model.TweetResponse;

public interface TweetEditUseCase {
    TweetResponse editTweet(TweetEditRequest editRequest);
}
