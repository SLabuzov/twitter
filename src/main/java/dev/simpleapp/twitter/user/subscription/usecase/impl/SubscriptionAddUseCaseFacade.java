package dev.simpleapp.twitter.user.subscription.usecase.impl;

import dev.simpleapp.twitter.common.exception.TwitterException;
import dev.simpleapp.twitter.security.api.model.CurrentUserApiModel;
import dev.simpleapp.twitter.user.profile.api.service.CurrentUserProfileApiService;
import dev.simpleapp.twitter.user.profile.api.service.UserProfileApiService;
import dev.simpleapp.twitter.user.profile.model.UserProfile;
import dev.simpleapp.twitter.user.subscription.model.Subscription;
import dev.simpleapp.twitter.user.subscription.service.SubscriptionService;
import dev.simpleapp.twitter.user.subscription.usecase.SubscriptionAddUseCase;
import dev.simpleapp.twitter.user.subscription.web.model.SubscribeRequest;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

@Component
@Transactional
public class SubscriptionAddUseCaseFacade implements SubscriptionAddUseCase {

    private final CurrentUserProfileApiService currentUserProfileApiService;
    private final UserProfileApiService userProfileApiService;
    private final SubscriptionService subscriptionService;

    public SubscriptionAddUseCaseFacade(CurrentUserProfileApiService currentUserProfileApiService,
                                        UserProfileApiService userProfileApiService,
                                        SubscriptionService subscriptionService) {
        this.currentUserProfileApiService = currentUserProfileApiService;
        this.userProfileApiService = userProfileApiService;
        this.subscriptionService = subscriptionService;
    }


    @Override
    public void subscribe(SubscribeRequest subscribeRequest, CurrentUserApiModel currentUserApiModel) {
        UserProfile follower = this.currentUserProfileApiService
                .currentUserProfile(currentUserApiModel);

        UserProfile followed = this.userProfileApiService
                .findUserProfileById(subscribeRequest.followedId());

        if (follower.equals(followed)) {
            throw new TwitterException("Подписка на самого себя не имеет никакого смысла");
        }

        Subscription subscription = new Subscription();
        subscription.setFollower(follower);
        subscription.setFollowed(followed);

        if (this.subscriptionService.existsSubscription(subscription)) {
            String errorMessage = String.format(
                    "Вы уже подписаны на %s",
                    followed.getNickname()
            );
            throw new TwitterException(errorMessage);
        }

        this.subscriptionService.createSubscription(subscription);
    }
}
