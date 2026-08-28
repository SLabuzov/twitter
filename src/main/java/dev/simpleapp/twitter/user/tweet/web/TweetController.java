package dev.simpleapp.twitter.user.tweet.web;

import dev.simpleapp.twitter.security.api.annotation.CurrentUser;
import dev.simpleapp.twitter.security.api.model.CurrentUserApiModel;
import dev.simpleapp.twitter.user.tweet.usecase.TweetAddUseCase;
import dev.simpleapp.twitter.user.tweet.usecase.TweetDeleteUseCase;
import dev.simpleapp.twitter.user.tweet.usecase.TweetEditUseCase;
import dev.simpleapp.twitter.user.tweet.usecase.TweetFindUseCase;
import dev.simpleapp.twitter.user.tweet.web.model.TweetAddRequest;
import dev.simpleapp.twitter.user.tweet.web.model.TweetEditRequest;
import dev.simpleapp.twitter.user.tweet.web.model.TweetFindRequest;
import dev.simpleapp.twitter.user.tweet.web.model.TweetPageResponse;
import dev.simpleapp.twitter.user.tweet.web.model.TweetResponse;
import jakarta.validation.Valid;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1/tweets")
public class TweetController {

    private final TweetAddUseCase tweetAddUseCase;
    private final TweetEditUseCase tweetEditUseCase;
    private final TweetDeleteUseCase tweetDeleteUseCase;
    private final TweetFindUseCase tweetFindUseCase;

    public TweetController(TweetAddUseCase tweetAddUseCase,
                           TweetEditUseCase tweetEditUseCase,
                           TweetDeleteUseCase tweetDeleteUseCase,
                           TweetFindUseCase tweetFindUseCase) {
        this.tweetAddUseCase = tweetAddUseCase;
        this.tweetEditUseCase = tweetEditUseCase;
        this.tweetDeleteUseCase = tweetDeleteUseCase;
        this.tweetFindUseCase = tweetFindUseCase;
    }

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public TweetResponse addTweet(@CurrentUser CurrentUserApiModel currentUserApiModel,
                                  @Valid @RequestBody TweetAddRequest addRequest) {
        return this.tweetAddUseCase.addTweet(addRequest, currentUserApiModel);
    }

    @PutMapping
    public TweetResponse editTweet(@CurrentUser CurrentUserApiModel currentUserApiModel,
                                   @Valid @RequestBody TweetEditRequest editRequest) {
        return this.tweetEditUseCase.editTweet(editRequest, currentUserApiModel);
    }

    @DeleteMapping("/{tweetId}")
    public void deleteTweet(@CurrentUser CurrentUserApiModel currentUserApiModel,
                            @PathVariable long tweetId) {
        this.tweetDeleteUseCase.deleteTweet(tweetId, currentUserApiModel);
    }

    @GetMapping
    public TweetPageResponse findOwnerTweets(
            @CurrentUser CurrentUserApiModel currentUserApiModel,
            @RequestParam("page") int page,
            @RequestParam("limit") int limit
    ) {
        TweetFindRequest findRequest = new TweetFindRequest(page, limit);
        return this.tweetFindUseCase.findTweets(findRequest, currentUserApiModel);
    }
}
