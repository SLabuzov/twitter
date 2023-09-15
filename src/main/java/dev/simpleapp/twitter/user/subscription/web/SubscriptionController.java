package dev.simpleapp.twitter.user.subscription.web;

import dev.simpleapp.twitter.user.subscription.usecase.SubscriptionAddUseCase;
import dev.simpleapp.twitter.user.subscription.usecase.SubscriptionDeleteUseCase;
import dev.simpleapp.twitter.user.subscription.web.model.SubscribeRequest;
import dev.simpleapp.twitter.user.subscription.web.model.UnsubscribeRequest;
import jakarta.validation.Valid;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1/subscriptions")
public class SubscriptionController {

    private final SubscriptionAddUseCase subscriptionAddUseCase;
    private final SubscriptionDeleteUseCase subscriptionDeleteUseCase;

    public SubscriptionController(SubscriptionAddUseCase subscriptionAddUseCase,
                                  SubscriptionDeleteUseCase subscriptionDeleteUseCase) {
        this.subscriptionAddUseCase = subscriptionAddUseCase;
        this.subscriptionDeleteUseCase = subscriptionDeleteUseCase;
    }

    @PostMapping("/subscribe")
    public void subscribe(@Valid @RequestBody SubscribeRequest subscribeRequest) {
        this.subscriptionAddUseCase.subscribe(subscribeRequest);
    }

    @PostMapping("/unsubscribe")
    public void unsubscribe(@Valid @RequestBody UnsubscribeRequest unsubscribeRequest) {
        this.subscriptionDeleteUseCase.unsubscribe(unsubscribeRequest);
    }
}
