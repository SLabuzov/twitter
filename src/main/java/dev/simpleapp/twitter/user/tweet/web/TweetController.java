package dev.simpleapp.twitter.user.tweet.web;

import dev.simpleapp.twitter.user.tweet.usecase.TweetAddUseCase;
import dev.simpleapp.twitter.user.tweet.web.model.TweetAddRequest;
import dev.simpleapp.twitter.user.tweet.web.model.TweetResponse;
import jakarta.validation.Valid;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1/tweets")
public class TweetController {

    private final TweetAddUseCase tweetAddUseCase;

    public TweetController(TweetAddUseCase tweetAddUseCase) {
        this.tweetAddUseCase = tweetAddUseCase;
    }

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public TweetResponse addTweet(@Valid @RequestBody TweetAddRequest addRequest) {
        return this.tweetAddUseCase.addTweet(addRequest);
    }
}
