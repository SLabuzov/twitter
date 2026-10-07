package dev.simpleapp.twitter.user.tweet.api.event;

import dev.simpleapp.twitter.common.event.DomainEvent;

public record TweetDeletedEvent(
        long tweetId,
        long authorId
)  implements DomainEvent {
}
