package dev.simpleapp.twitter.user.timeline.usecase;

import dev.simpleapp.twitter.common.dto.PageResponse;
import dev.simpleapp.twitter.security.api.model.CurrentUserApiModel;
import dev.simpleapp.twitter.user.timeline.web.model.TimelineFindRequest;
import dev.simpleapp.twitter.user.timeline.web.model.TimelineResponse;
import jakarta.validation.Valid;
import org.springframework.validation.annotation.Validated;

@Validated
public interface TimelineFindUseCase {
    PageResponse<TimelineResponse> findTimelines(@Valid TimelineFindRequest findRequest, CurrentUserApiModel currentUserApiModel);
}
