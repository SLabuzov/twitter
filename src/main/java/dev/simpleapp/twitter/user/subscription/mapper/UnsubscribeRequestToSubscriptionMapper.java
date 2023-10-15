package dev.simpleapp.twitter.user.subscription.mapper;

import dev.simpleapp.twitter.common.mapper.Mapper;
import dev.simpleapp.twitter.user.subscription.model.Subscription;
import dev.simpleapp.twitter.user.subscription.web.model.UnsubscribeRequest;

public interface UnsubscribeRequestToSubscriptionMapper extends Mapper<Subscription, UnsubscribeRequest> {
}
