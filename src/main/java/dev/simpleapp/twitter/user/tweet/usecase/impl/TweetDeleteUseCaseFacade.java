package dev.simpleapp.twitter.user.tweet.usecase.impl;

import dev.simpleapp.twitter.common.exception.TwitterException;
import dev.simpleapp.twitter.common.i18n.MessageProvider;
import dev.simpleapp.twitter.security.api.model.CurrentUserApiModel;
import dev.simpleapp.twitter.user.profile.api.service.CurrentUserProfileApiService;
import dev.simpleapp.twitter.user.profile.model.UserProfile;
import dev.simpleapp.twitter.user.tweet.api.event.TweetDeletedEvent;
import dev.simpleapp.twitter.user.tweet.model.Tweet;
import dev.simpleapp.twitter.user.tweet.service.TweetService;
import dev.simpleapp.twitter.user.tweet.usecase.TweetDeleteUseCase;
import org.springframework.context.ApplicationEventPublisher;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

@Component
@Transactional
public class TweetDeleteUseCaseFacade implements TweetDeleteUseCase {

    private final TweetService tweetService;
    private final CurrentUserProfileApiService currentUserProfileApiService;
    private final MessageProvider messageProvider;
    private final ApplicationEventPublisher eventPublisher;

    public TweetDeleteUseCaseFacade(TweetService tweetService,
                                    CurrentUserProfileApiService currentUserProfileApiService,
                                    MessageProvider messageProvider,
                                    ApplicationEventPublisher eventPublisher) {
        this.tweetService = tweetService;
        this.currentUserProfileApiService = currentUserProfileApiService;
        this.messageProvider = messageProvider;
        this.eventPublisher = eventPublisher;
    }

    @Override
    public void deleteTweet(long tweetId, CurrentUserApiModel currentUserApiModel) {
        UserProfile actor = this.currentUserProfileApiService
                .currentUserProfile(currentUserApiModel);

        UserProfile owner = this.tweetService
                .findTweetById(tweetId)
                .map(Tweet::getUserProfile)
                .orElseThrow(() -> new TwitterException(
                        messageProvider.getMessage("error.tweet.not.found", tweetId)
                ));

        if (!actor.equals(owner)) {
            throw new TwitterException(
                    messageProvider.getMessage("error.tweet.delete.forbidden", tweetId, actor.getNickname())
            );
        }

        eventPublisher.publishEvent(new TweetDeletedEvent(
                tweetId,
                owner.getId()
        ));

        this.tweetService.deleteTweet(tweetId);
    }
}
