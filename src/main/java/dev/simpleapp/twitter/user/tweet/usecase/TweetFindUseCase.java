package dev.simpleapp.twitter.user.tweet.usecase;

import dev.simpleapp.twitter.user.tweet.web.model.TweetResponse;
import java.util.Collection;

public interface TweetFindUseCase {
    Collection<TweetResponse> findTweets();
}
