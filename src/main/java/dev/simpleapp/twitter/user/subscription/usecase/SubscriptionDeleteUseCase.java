package dev.simpleapp.twitter.user.subscription.usecase;

import dev.simpleapp.twitter.user.subscription.web.model.UnsubscribeRequest;

public interface SubscriptionDeleteUseCase {
    void unsubscribe(UnsubscribeRequest unsubscribeRequest);
}
