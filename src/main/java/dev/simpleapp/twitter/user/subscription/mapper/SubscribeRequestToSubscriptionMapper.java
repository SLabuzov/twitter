package dev.simpleapp.twitter.user.subscription.mapper;

import dev.simpleapp.twitter.security.mapper.Mapper;
import dev.simpleapp.twitter.user.subscription.model.Subscription;
import dev.simpleapp.twitter.user.subscription.web.model.SubscribeRequest;

public interface SubscribeRequestToSubscriptionMapper extends Mapper<Subscription, SubscribeRequest> {
}
