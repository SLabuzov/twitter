package dev.simpleapp.twitter.user.tweet.usecase.impl;

import dev.simpleapp.twitter.common.exception.TwitterException;
import dev.simpleapp.twitter.user.profile.api.service.CurrentUserProfileApiService;
import dev.simpleapp.twitter.user.profile.model.UserProfile;
import dev.simpleapp.twitter.user.tweet.mapper.TweetEditRequestToTweetMapper;
import dev.simpleapp.twitter.user.tweet.mapper.TweetToTweetResponseMapper;
import dev.simpleapp.twitter.user.tweet.model.Tweet;
import dev.simpleapp.twitter.user.tweet.service.TweetService;
import dev.simpleapp.twitter.user.tweet.usecase.TweetEditUseCase;
import dev.simpleapp.twitter.user.tweet.web.model.TweetEditRequest;
import dev.simpleapp.twitter.user.tweet.web.model.TweetResponse;
import org.springframework.stereotype.Component;

@Component
public class TweetEditUseCaseImpl implements TweetEditUseCase {

    private final TweetService tweetService;
    private final TweetEditRequestToTweetMapper tweetEditRequestToTweetMapper;
    private final TweetToTweetResponseMapper tweetToTweetResponseMapper;
    private final CurrentUserProfileApiService currentUserProfileApiService;

    public TweetEditUseCaseImpl(TweetService tweetService,
                                TweetEditRequestToTweetMapper tweetEditRequestToTweetMapper,
                                TweetToTweetResponseMapper tweetToTweetResponseMapper,
                                CurrentUserProfileApiService currentUserProfileApiService) {
        this.tweetService = tweetService;
        this.tweetEditRequestToTweetMapper = tweetEditRequestToTweetMapper;
        this.tweetToTweetResponseMapper = tweetToTweetResponseMapper;
        this.currentUserProfileApiService = currentUserProfileApiService;
    }

    @Override
    public TweetResponse editTweet(TweetEditRequest editRequest) {
        UserProfile actor = this.currentUserProfileApiService
                .currentUserProfile();

        UserProfile owner = this.tweetService
                .findTweetById(editRequest.id())
                .map(Tweet::getUserProfile)
                .orElseThrow(() -> {
                    String errorMessage = String.format("Твит с id = %d не существует", editRequest.id());
                    return new TwitterException(errorMessage);
                });

        if (!actor.equals(owner)) {
            String errorMessage = String.format(
                    "Редактирование твита с id = %d запрещено. Пользователь %s не является его владельцем",
                    editRequest.id(),
                    actor.getNickname()
            );
            throw new TwitterException(errorMessage);
        }

        Tweet tweet = this.tweetEditRequestToTweetMapper.map(editRequest);
        Tweet updatedTweet = this.tweetService.updateTweet(tweet);

        return this.tweetToTweetResponseMapper.map(updatedTweet);
    }
}
