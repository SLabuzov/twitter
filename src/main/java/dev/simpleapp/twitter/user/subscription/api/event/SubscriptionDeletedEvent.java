package dev.simpleapp.twitter.user.subscription.api.event;

import dev.simpleapp.twitter.common.event.DomainEvent;

public record SubscriptionDeletedEvent(
        long followerId,
        long followedId
) implements DomainEvent {
}
