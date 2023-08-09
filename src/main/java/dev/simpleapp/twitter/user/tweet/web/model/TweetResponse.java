package dev.simpleapp.twitter.user.tweet.web.model;

import java.time.Instant;

public record TweetResponse(
        long id,
        String message,
        Instant createdTimestamp,
        Instant modifiedTimestamp
) {
}
