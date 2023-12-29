package dev.simpleapp.twitter.user.timeline.usecase.impl;

import dev.simpleapp.twitter.user.profile.api.service.CurrentUserProfileApiService;
import dev.simpleapp.twitter.user.profile.model.UserProfile;
import dev.simpleapp.twitter.user.timeline.mapper.TweetPageToTimelinePageResponseMapper;
import dev.simpleapp.twitter.user.timeline.usecase.TimelineFindUseCase;
import dev.simpleapp.twitter.user.timeline.web.model.TimelineFindRequest;
import dev.simpleapp.twitter.user.timeline.web.model.TimelinePageResponse;
import dev.simpleapp.twitter.user.tweet.api.service.TweetApiService;
import dev.simpleapp.twitter.user.tweet.model.Tweet;
import dev.simpleapp.twitter.user.tweet.model.Tweet_;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Component;

@Component
public class TimelineFindUseCaseFacade implements TimelineFindUseCase {

    private final CurrentUserProfileApiService currentUserProfileApiService;
    private final TweetApiService tweetApiService;
    private final TweetPageToTimelinePageResponseMapper mapper;

    public TimelineFindUseCaseFacade(CurrentUserProfileApiService currentUserProfileApiService,
                                     TweetApiService tweetApiService,
                                     TweetPageToTimelinePageResponseMapper mapper) {
        this.currentUserProfileApiService = currentUserProfileApiService;
        this.tweetApiService = tweetApiService;
        this.mapper = mapper;
    }

    @Override
    public TimelinePageResponse findTimelines(TimelineFindRequest findRequest) {
        Sort sort = Sort.by(Sort.Direction.DESC, Tweet_.CREATED_TIMESTAMP);
        Pageable pageable = PageRequest.of(findRequest.page(), findRequest.limit(), sort);

        UserProfile follower = currentUserProfileApiService.currentUserProfile();
        Page<Tweet> tweets = tweetApiService.findAllFollowerTweets(follower, pageable);

        return mapper.map(tweets);
    }
}
