package dev.simpleapp.twitter.user.profile.api.event;

import dev.simpleapp.twitter.common.event.DomainEvent;

public record ProfileCreatedEvent(
        long userProfileId,
        String nickname
) implements DomainEvent {
}
