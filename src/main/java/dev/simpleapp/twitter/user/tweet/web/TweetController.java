package dev.simpleapp.twitter.user.tweet.web;

import dev.simpleapp.twitter.user.tweet.usecase.TweetAddUseCase;
import dev.simpleapp.twitter.user.tweet.usecase.TweetDeleteUseCase;
import dev.simpleapp.twitter.user.tweet.usecase.TweetEditUseCase;
import dev.simpleapp.twitter.user.tweet.web.model.TweetAddRequest;
import dev.simpleapp.twitter.user.tweet.web.model.TweetEditRequest;
import dev.simpleapp.twitter.user.tweet.web.model.TweetResponse;
import jakarta.validation.Valid;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1/tweets")
public class TweetController {

    private final TweetAddUseCase tweetAddUseCase;
    private final TweetEditUseCase tweetEditUseCase;
    private final TweetDeleteUseCase tweetDeleteUseCase;

    public TweetController(TweetAddUseCase tweetAddUseCase,
                           TweetEditUseCase tweetEditUseCase,
                           TweetDeleteUseCase tweetDeleteUseCase) {
        this.tweetAddUseCase = tweetAddUseCase;
        this.tweetEditUseCase = tweetEditUseCase;
        this.tweetDeleteUseCase = tweetDeleteUseCase;
    }

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public TweetResponse addTweet(@Valid @RequestBody TweetAddRequest addRequest) {
        return this.tweetAddUseCase.addTweet(addRequest);
    }

    @PutMapping
    public TweetResponse editTweet(@Valid @RequestBody TweetEditRequest editRequest) {
        return this.tweetEditUseCase.editTweet(editRequest);
    }

    @DeleteMapping("/{tweetId}")
    public void deleteTweet(@PathVariable long tweetId) {
        this.tweetDeleteUseCase.deleteTweet(tweetId);
    }
}
