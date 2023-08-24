package dev.simpleapp.twitter.user.tweet.usecase;

import dev.simpleapp.twitter.user.tweet.web.model.TweetFindRequest;
import dev.simpleapp.twitter.user.tweet.web.model.TweetResponse;
import jakarta.validation.Valid;
import java.util.Collection;
import org.springframework.validation.annotation.Validated;

@Validated
public interface TweetFindUseCase {
    Collection<TweetResponse> findTweets(@Valid TweetFindRequest findRequest);
}
