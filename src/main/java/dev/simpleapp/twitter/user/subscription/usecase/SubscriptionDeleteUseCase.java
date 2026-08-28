package dev.simpleapp.twitter.user.subscription.usecase;

import dev.simpleapp.twitter.security.api.model.CurrentUserApiModel;
import dev.simpleapp.twitter.user.subscription.web.model.UnsubscribeRequest;

public interface SubscriptionDeleteUseCase {
    void unsubscribe(UnsubscribeRequest unsubscribeRequest, CurrentUserApiModel currentUserApiModel);
}
