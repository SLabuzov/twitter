package dev.simpleapp.twitter.user.subscription.usecase;

import dev.simpleapp.twitter.common.dto.PageResponse;
import dev.simpleapp.twitter.security.api.model.CurrentUserApiModel;
import dev.simpleapp.twitter.user.subscription.web.model.FollowerFindRequest;
import dev.simpleapp.twitter.user.subscription.web.model.FollowerResponse;
import jakarta.validation.Valid;
import org.springframework.validation.annotation.Validated;

@Validated
public interface SubscriptionFindFollowerUseCase {
    PageResponse<FollowerResponse> findFollowers(@Valid FollowerFindRequest findRequest, CurrentUserApiModel currentUserApiModel);
}
