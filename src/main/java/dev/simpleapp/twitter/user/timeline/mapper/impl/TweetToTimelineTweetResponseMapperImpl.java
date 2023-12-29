package dev.simpleapp.twitter.user.timeline.mapper.impl;

import dev.simpleapp.twitter.user.profile.model.UserProfile;
import dev.simpleapp.twitter.user.timeline.mapper.TweetToTimelineTweetResponseMapper;
import dev.simpleapp.twitter.user.timeline.web.model.TimelineResponse;
import dev.simpleapp.twitter.user.tweet.model.Tweet;
import org.springframework.stereotype.Component;

@Component
public class TweetToTimelineTweetResponseMapperImpl implements TweetToTimelineTweetResponseMapper {

    @Override
    public TimelineResponse map(Tweet item) {
        UserProfile userProfile = item.getUserProfile();
        return new TimelineResponse(
                item.getId(),
                userProfile.getId(),
                item.getMessage(),
                userProfile.getNickname(),
                userProfile.getImageLink(),
                item.getCreatedTimestamp()
        );
    }
}
