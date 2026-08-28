package dev.simpleapp.twitter.user.subscription.usecase;

import dev.simpleapp.twitter.security.api.model.CurrentUserApiModel;
import dev.simpleapp.twitter.user.subscription.web.model.FollowerFindRequest;
import dev.simpleapp.twitter.user.subscription.web.model.FollowerPageResponse;
import jakarta.validation.Valid;
import org.springframework.validation.annotation.Validated;

@Validated
public interface SubscriptionFindFollowerUseCase {
    FollowerPageResponse findFollowers(@Valid FollowerFindRequest findRequest, CurrentUserApiModel currentUserApiModel);
}
