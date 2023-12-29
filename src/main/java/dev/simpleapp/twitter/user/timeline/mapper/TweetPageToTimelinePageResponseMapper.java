package dev.simpleapp.twitter.user.timeline.mapper;

import dev.simpleapp.twitter.common.mapper.Mapper;
import dev.simpleapp.twitter.user.timeline.web.model.TimelinePageResponse;
import dev.simpleapp.twitter.user.tweet.model.Tweet;
import org.springframework.data.domain.Page;

public interface TweetPageToTimelinePageResponseMapper extends Mapper<TimelinePageResponse, Page<Tweet>> {
}
