package dev.simpleapp.twitter.user.subscription.usecase.impl;

import dev.simpleapp.twitter.common.exception.TwitterException;
import dev.simpleapp.twitter.common.i18n.MessageProvider;
import dev.simpleapp.twitter.security.api.model.CurrentUserApiModel;
import dev.simpleapp.twitter.user.profile.api.model.ProfileApi;
import dev.simpleapp.twitter.user.profile.api.service.CurrentUserProfileApiService;
import dev.simpleapp.twitter.user.profile.api.service.UserProfileApiService;
import dev.simpleapp.twitter.user.subscription.api.event.SubscriptionDeletedEvent;
import dev.simpleapp.twitter.user.subscription.model.Subscription;
import dev.simpleapp.twitter.user.subscription.service.SubscriptionService;
import dev.simpleapp.twitter.user.subscription.usecase.SubscriptionDeleteUseCase;
import dev.simpleapp.twitter.user.subscription.web.model.UnsubscribeRequest;
import org.springframework.context.ApplicationEventPublisher;
import org.springframework.stereotype.Component;

@Component
public class SubscriptionDeleteUseCaseFacade implements SubscriptionDeleteUseCase {

    private final CurrentUserProfileApiService currentUserProfileApiService;
    private final UserProfileApiService userProfileApiService;
    private final SubscriptionService subscriptionService;
    private final MessageProvider messageProvider;
    private final ApplicationEventPublisher eventPublisher;

    public SubscriptionDeleteUseCaseFacade(CurrentUserProfileApiService currentUserProfileApiService,
                                           UserProfileApiService userProfileApiService,
                                           SubscriptionService subscriptionService,
                                           MessageProvider messageProvider,
                                           ApplicationEventPublisher eventPublisher) {
        this.currentUserProfileApiService = currentUserProfileApiService;
        this.userProfileApiService = userProfileApiService;
        this.subscriptionService = subscriptionService;
        this.messageProvider = messageProvider;
        this.eventPublisher = eventPublisher;
    }

    @Override
    public void unsubscribe(UnsubscribeRequest unsubscribeRequest, CurrentUserApiModel currentUserApiModel) {
        ProfileApi follower = this.currentUserProfileApiService
                .currentUserProfile(currentUserApiModel);

        ProfileApi followed = this.userProfileApiService
                .findUserProfileById(unsubscribeRequest.followedId());

        if (follower.equals(followed)) {
            throw new TwitterException(messageProvider.getMessage("error.subscription.self.unsubscribe"));
        }

        Subscription subscription = new Subscription();
        subscription.setFollowerId(follower.profileId());
        subscription.setFollowedId(followed.profileId());

        if (!this.subscriptionService.existsSubscription(subscription)) {
            throw new TwitterException(
                    messageProvider.getMessage("error.subscription.not.exists", followed.nickname())
            );
        }
        this.subscriptionService.deleteSubscription(subscription);

        eventPublisher.publishEvent(new SubscriptionDeletedEvent(
                follower.profileId(),
                followed.profileId()
        ));
    }
}
