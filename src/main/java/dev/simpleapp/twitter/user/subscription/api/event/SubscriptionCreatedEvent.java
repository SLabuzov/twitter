package dev.simpleapp.twitter.user.subscription.api.event;

import dev.simpleapp.twitter.common.event.DomainEvent;

public record SubscriptionCreatedEvent(
        long followerId,
        long followedId
) implements DomainEvent {
}
