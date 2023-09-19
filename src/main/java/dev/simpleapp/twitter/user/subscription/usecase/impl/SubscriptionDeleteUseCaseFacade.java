package dev.simpleapp.twitter.user.subscription.usecase.impl;

import dev.simpleapp.twitter.user.subscription.usecase.SubscriptionDeleteUseCase;
import dev.simpleapp.twitter.user.subscription.web.model.UnsubscribeRequest;
import org.springframework.stereotype.Component;

@Component
public class SubscriptionDeleteUseCaseFacade implements SubscriptionDeleteUseCase {
    @Override
    public void unsubscribe(UnsubscribeRequest unsubscribeRequest) {
        // TODO: мини дом. задание
    }
}
