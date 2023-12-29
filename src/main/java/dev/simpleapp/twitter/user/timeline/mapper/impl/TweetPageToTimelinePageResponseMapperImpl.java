package dev.simpleapp.twitter.user.timeline.mapper.impl;

import dev.simpleapp.twitter.user.timeline.mapper.TweetPageToTimelinePageResponseMapper;
import dev.simpleapp.twitter.user.timeline.mapper.TweetToTimelineTweetResponseMapper;
import dev.simpleapp.twitter.user.timeline.web.model.TimelinePageResponse;
import dev.simpleapp.twitter.user.timeline.web.model.TimelineResponse;
import dev.simpleapp.twitter.user.tweet.model.Tweet;
import java.util.Collection;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Component;

@Component
public class TweetPageToTimelinePageResponseMapperImpl implements TweetPageToTimelinePageResponseMapper {

    private final TweetToTimelineTweetResponseMapper mapper;

    public TweetPageToTimelinePageResponseMapperImpl(TweetToTimelineTweetResponseMapper mapper) {
        this.mapper = mapper;
    }

    @Override
    public TimelinePageResponse map(Page<Tweet> source) {
        Collection<TimelineResponse> timelineResponses = source
                .stream()
                .map(this.mapper::map)
                .toList();

        return new TimelinePageResponse(
                source.getTotalElements(),
                source.isFirst(),
                source.isLast(),
                timelineResponses
        );
    }
}
