package dev.simpleapp.twitter.user.subscription.mapper.impl;

import dev.simpleapp.twitter.user.profile.api.service.CurrentUserProfileApiService;
import dev.simpleapp.twitter.user.profile.api.service.UserProfileApiService;
import dev.simpleapp.twitter.user.profile.model.UserProfile;
import dev.simpleapp.twitter.user.subscription.mapper.UnsubscribeRequestToSubscriptionMapper;
import dev.simpleapp.twitter.user.subscription.model.Subscription;
import dev.simpleapp.twitter.user.subscription.web.model.UnsubscribeRequest;
import org.springframework.stereotype.Component;

@Component
public class UnsubscribeRequestToSubscriptionMapperImpl implements UnsubscribeRequestToSubscriptionMapper {

    private final CurrentUserProfileApiService currentUserProfileApiService;
    private final UserProfileApiService userProfileApiService;

    public UnsubscribeRequestToSubscriptionMapperImpl(CurrentUserProfileApiService currentUserProfileApiService,
                                                      UserProfileApiService userProfileApiService) {
        this.currentUserProfileApiService = currentUserProfileApiService;
        this.userProfileApiService = userProfileApiService;
    }

    @Override
    public Subscription map(UnsubscribeRequest unsubscribeRequest) {

        UserProfile follower = this.currentUserProfileApiService
                .currentUserProfile();

        UserProfile followed = this.userProfileApiService
                .findUserProfileById(unsubscribeRequest.followedId());

        Subscription subscription = new Subscription();
        subscription.setFollower(follower);
        subscription.setFollowed(followed);

        return subscription;
    }
}
