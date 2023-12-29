package dev.simpleapp.twitter.user.timeline.mapper;

import dev.simpleapp.twitter.common.mapper.Mapper;
import dev.simpleapp.twitter.user.timeline.web.model.TimelineResponse;
import dev.simpleapp.twitter.user.tweet.model.Tweet;

public interface TweetToTimelineTweetResponseMapper extends Mapper<TimelineResponse, Tweet> {
}
