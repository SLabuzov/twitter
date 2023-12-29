package dev.simpleapp.twitter.user.timeline.web.model;

import java.time.Instant;

public record TimelineResponse(
        long id,
        long authorId,
        String message,
        String authorNickname,
        String authorImageLink,
        Instant createdTimestamp
) {
}
