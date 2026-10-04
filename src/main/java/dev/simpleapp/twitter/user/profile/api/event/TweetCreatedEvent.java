package dev.simpleapp.twitter.user.profile.api.event;

import dev.simpleapp.twitter.common.event.DomainEvent;

public record TweetCreatedEvent(
        long tweetId,
        long authorId,
        boolean isReply
) implements DomainEvent {

}
