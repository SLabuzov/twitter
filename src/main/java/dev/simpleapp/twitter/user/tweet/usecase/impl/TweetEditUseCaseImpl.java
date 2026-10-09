package dev.simpleapp.twitter.user.tweet.usecase.impl;

import dev.simpleapp.twitter.common.exception.TwitterException;
import dev.simpleapp.twitter.common.i18n.MessageProvider;
import dev.simpleapp.twitter.security.api.model.CurrentUserApiModel;
import dev.simpleapp.twitter.user.profile.api.service.CurrentUserProfileApiService;
import dev.simpleapp.twitter.user.tweet.mapper.TweetToTweetResponseMapper;
import dev.simpleapp.twitter.user.tweet.model.Tweet;
import dev.simpleapp.twitter.user.tweet.service.TweetService;
import dev.simpleapp.twitter.user.tweet.usecase.TweetEditUseCase;
import dev.simpleapp.twitter.user.tweet.web.model.TweetEditRequest;
import dev.simpleapp.twitter.user.tweet.web.model.TweetResponse;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

@Component
@Transactional
public class TweetEditUseCaseImpl implements TweetEditUseCase {

    private final TweetService tweetService;
    private final TweetToTweetResponseMapper tweetToTweetResponseMapper;
    private final CurrentUserProfileApiService currentUserProfileApiService;
    private final MessageProvider messageProvider;

    public TweetEditUseCaseImpl(TweetService tweetService,

                                TweetToTweetResponseMapper tweetToTweetResponseMapper,
                                CurrentUserProfileApiService currentUserProfileApiService, MessageProvider messageProvider) {
        this.tweetService = tweetService;
        this.tweetToTweetResponseMapper = tweetToTweetResponseMapper;
        this.currentUserProfileApiService = currentUserProfileApiService;
        this.messageProvider = messageProvider;
    }

    @Override
    public TweetResponse editTweet(TweetEditRequest editRequest, CurrentUserApiModel currentUserApiModel) {
        var actor = this.currentUserProfileApiService
                .currentUserProfile(currentUserApiModel);

        Tweet currentTweet = this.tweetService
                .findTweetById(editRequest.id())
                .orElseThrow(() -> new TwitterException(
                        messageProvider.getMessage("error.tweet.not.found", editRequest.id())
                ));

        long ownerId = currentTweet.getUserProfileId();

        if (actor.profileId() != (ownerId)) {
            throw new TwitterException(
                    messageProvider.getMessage("error.tweet.edit.forbidden", editRequest.id(), actor.nickname())
            );
        }

        currentTweet.setMessage(editRequest.message());
        Tweet updatedTweet = this.tweetService.updateTweet(currentTweet);

        return this.tweetToTweetResponseMapper.map(updatedTweet);
    }
}
