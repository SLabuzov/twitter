package dev.simpleapp.twitter.user.tweet.usecase;

import dev.simpleapp.twitter.user.tweet.web.model.TweetFindRequest;
import dev.simpleapp.twitter.user.tweet.web.model.TweetPageResponse;
import jakarta.validation.Valid;
import org.springframework.validation.annotation.Validated;

@Validated
public interface TweetFindUseCase {
    TweetPageResponse findTweets(@Valid TweetFindRequest findRequest);
}
