package dev.simpleapp.twitter.user.timeline.model;

import java.io.Serializable;

public record TimelineFeedId(
        Long readerId,
        Long tweetId
) implements Serializable {
}
