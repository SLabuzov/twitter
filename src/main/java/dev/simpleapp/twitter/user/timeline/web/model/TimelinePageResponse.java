package dev.simpleapp.twitter.user.timeline.web.model;

import java.util.Collection;

public record TimelinePageResponse(
        long totalTweets,
        boolean isFirstPage,
        boolean isLastPage,
        Collection<TimelineResponse> tweets
) {
}
