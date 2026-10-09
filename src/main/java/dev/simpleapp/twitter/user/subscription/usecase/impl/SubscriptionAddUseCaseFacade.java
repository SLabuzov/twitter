package dev.simpleapp.twitter.user.subscription.usecase.impl;

import dev.simpleapp.twitter.common.exception.TwitterException;
import dev.simpleapp.twitter.common.i18n.MessageProvider;
import dev.simpleapp.twitter.security.api.model.CurrentUserApiModel;
import dev.simpleapp.twitter.user.profile.api.model.ProfileApi;
import dev.simpleapp.twitter.user.profile.api.service.CurrentUserProfileApiService;
import dev.simpleapp.twitter.user.profile.api.service.UserProfileApiService;
import dev.simpleapp.twitter.user.subscription.api.event.SubscriptionCreatedEvent;
import dev.simpleapp.twitter.user.subscription.model.Subscription;
import dev.simpleapp.twitter.user.subscription.service.SubscriptionService;
import dev.simpleapp.twitter.user.subscription.usecase.SubscriptionAddUseCase;
import dev.simpleapp.twitter.user.subscription.web.model.SubscribeRequest;
import org.springframework.context.ApplicationEventPublisher;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

@Component
@Transactional
public class SubscriptionAddUseCaseFacade implements SubscriptionAddUseCase {

    private final CurrentUserProfileApiService currentUserProfileApiService;
    private final UserProfileApiService userProfileApiService;
    private final SubscriptionService subscriptionService;
    private final MessageProvider messageProvider;
    private final ApplicationEventPublisher eventPublisher;

    public SubscriptionAddUseCaseFacade(CurrentUserProfileApiService currentUserProfileApiService,
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
    public void subscribe(SubscribeRequest subscribeRequest, CurrentUserApiModel currentUserApiModel) {
        ProfileApi follower = this.currentUserProfileApiService
                .currentUserProfile(currentUserApiModel);

        ProfileApi followed = this.userProfileApiService
                .findUserProfileById(subscribeRequest.followedId());

        if (follower.equals(followed)) {
            throw new TwitterException(messageProvider.getMessage("error.subscription.self.subscribe"));
        }

        Subscription subscription = new Subscription();
        subscription.setFollowerId(follower.profileId());
        subscription.setFollowedId(followed.profileId());

        if (this.subscriptionService.existsSubscription(subscription)) {
            throw new TwitterException(
                    messageProvider.getMessage("error.subscription.already.exists", followed.nickname())
            );
        }

        this.subscriptionService.createSubscription(subscription);

        eventPublisher.publishEvent(new SubscriptionCreatedEvent(
                follower.profileId(),
                followed.profileId()
        ));
    }
}
