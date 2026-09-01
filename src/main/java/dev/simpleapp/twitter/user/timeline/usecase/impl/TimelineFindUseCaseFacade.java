package dev.simpleapp.twitter.user.timeline.usecase.impl;

import dev.simpleapp.twitter.security.api.model.CurrentUserApiModel;
import dev.simpleapp.twitter.user.profile.api.service.CurrentUserProfileApiService;
import dev.simpleapp.twitter.user.profile.model.UserProfile;
import dev.simpleapp.twitter.user.timeline.model.TimelineFeed;
import dev.simpleapp.twitter.user.timeline.model.TimelineFeed_;
import dev.simpleapp.twitter.user.timeline.service.TimelineFeedService;
import dev.simpleapp.twitter.user.timeline.usecase.TimelineFindUseCase;
import dev.simpleapp.twitter.user.timeline.web.model.TimelineFindRequest;
import dev.simpleapp.twitter.user.timeline.web.model.TimelinePageResponse;
import dev.simpleapp.twitter.user.timeline.web.model.TimelineResponse;
import java.util.Collection;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

@Component
@Transactional(readOnly = true)
public class TimelineFindUseCaseFacade implements TimelineFindUseCase {

    private final CurrentUserProfileApiService currentUserProfileApiService;
    private final TimelineFeedService timelineFeedService;

    public TimelineFindUseCaseFacade(CurrentUserProfileApiService currentUserProfileApiService,
                                     TimelineFeedService timelineFeedService) {
        this.currentUserProfileApiService = currentUserProfileApiService;
        this.timelineFeedService = timelineFeedService;
    }

    @Override
    public TimelinePageResponse findTimelines(TimelineFindRequest findRequest, CurrentUserApiModel currentUserApiModel) {
        Sort sort = Sort.by(Sort.Direction.DESC, TimelineFeed_.CREATED_TIMESTAMP);
        Pageable pageable = PageRequest.of(findRequest.page(), findRequest.limit(), sort);

        UserProfile follower = currentUserProfileApiService.currentUserProfile(currentUserApiModel);

        Page<TimelineFeed> feedSlice = timelineFeedService
                .getReaderFeedSlice(follower.getId(), pageable);

        Collection<TimelineResponse> feeds = feedSlice
                .stream()
                .map(feed -> new TimelineResponse(
                        feed.getTweetId(),
                        feed.getAuthorId(),
                        feed.getMessage(),
                        feed.getAuthorNickname(),
                        feed.getAuthorImageLInk(),
                        feed.getCreatedTimestamp()
                ))
                .toList();

        return new TimelinePageResponse(
                feedSlice.getTotalElements(),
                feedSlice.isFirst(),
                feedSlice.isLast(),
                feeds
        );
    }
}
