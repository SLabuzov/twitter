package dev.simpleapp.twitter.user.tweet.usecase;

import dev.simpleapp.twitter.common.dto.PageResponse;
import dev.simpleapp.twitter.security.api.model.CurrentUserApiModel;
import dev.simpleapp.twitter.user.tweet.web.model.TweetFindRequest;
import dev.simpleapp.twitter.user.tweet.web.model.TweetResponse;
import jakarta.validation.Valid;
import org.springframework.validation.annotation.Validated;

@Validated
public interface TweetFindUseCase {
    PageResponse<TweetResponse> findTweets(@Valid TweetFindRequest findRequest, CurrentUserApiModel currentUserApiModel);
}
