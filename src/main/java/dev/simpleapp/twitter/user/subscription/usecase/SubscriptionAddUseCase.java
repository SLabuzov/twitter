package dev.simpleapp.twitter.user.subscription.usecase;

import dev.simpleapp.twitter.security.api.model.CurrentUserApiModel;
import dev.simpleapp.twitter.user.subscription.web.model.SubscribeRequest;

public interface SubscriptionAddUseCase {
    void subscribe(SubscribeRequest subscribeRequest, CurrentUserApiModel currentUserApiModel);
}
