package dev.simpleapp.twitter.user.subscription.usecase;

import dev.simpleapp.twitter.user.subscription.web.model.SubscribeRequest;

public interface SubscriptionAddUseCase {
    void subscribe(SubscribeRequest subscribeRequest);
}
