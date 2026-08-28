package dev.simpleapp.twitter.user.subscription.web;

import dev.simpleapp.twitter.security.api.annotation.CurrentUser;
import dev.simpleapp.twitter.security.api.model.CurrentUserApiModel;
import dev.simpleapp.twitter.user.subscription.usecase.SubscriptionAddUseCase;
import dev.simpleapp.twitter.user.subscription.usecase.SubscriptionDeleteUseCase;
import dev.simpleapp.twitter.user.subscription.usecase.SubscriptionFindFollowerUseCase;
import dev.simpleapp.twitter.user.subscription.web.model.FollowerFindRequest;
import dev.simpleapp.twitter.user.subscription.web.model.FollowerPageResponse;
import dev.simpleapp.twitter.user.subscription.web.model.SubscribeRequest;
import dev.simpleapp.twitter.user.subscription.web.model.UnsubscribeRequest;
import jakarta.validation.Valid;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1/subscriptions")
public class SubscriptionController {

    private final SubscriptionAddUseCase subscriptionAddUseCase;
    private final SubscriptionDeleteUseCase subscriptionDeleteUseCase;
    private final SubscriptionFindFollowerUseCase subscriptionFindFollowerUseCase;

    public SubscriptionController(SubscriptionAddUseCase subscriptionAddUseCase,
                                  SubscriptionDeleteUseCase subscriptionDeleteUseCase,
                                  SubscriptionFindFollowerUseCase subscriptionFindFollowerUseCase) {
        this.subscriptionAddUseCase = subscriptionAddUseCase;
        this.subscriptionDeleteUseCase = subscriptionDeleteUseCase;
        this.subscriptionFindFollowerUseCase = subscriptionFindFollowerUseCase;
    }

    @PostMapping("/subscribe")
    public void subscribe(@CurrentUser CurrentUserApiModel currentUserApiModel,
                          @Valid @RequestBody SubscribeRequest subscribeRequest) {
        this.subscriptionAddUseCase.subscribe(subscribeRequest, currentUserApiModel);
    }

    @PostMapping("/unsubscribe")
    public void unsubscribe(@CurrentUser CurrentUserApiModel currentUserApiModel,
                            @Valid @RequestBody UnsubscribeRequest unsubscribeRequest) {
        this.subscriptionDeleteUseCase.unsubscribe(unsubscribeRequest, currentUserApiModel);
    }

    @GetMapping("/followers")
    public FollowerPageResponse allFollowers(@CurrentUser CurrentUserApiModel currentUserApiModel,
                                             @RequestParam("page") int page,
                                             @RequestParam("limit") int limit) {
        FollowerFindRequest findRequest = new FollowerFindRequest(page, limit);
        return this.subscriptionFindFollowerUseCase.findFollowers(findRequest, currentUserApiModel);
    }
}
