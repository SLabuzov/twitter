package dev.simpleapp.twitter.user.timeline.usecase;

import dev.simpleapp.twitter.security.api.model.CurrentUserApiModel;
import dev.simpleapp.twitter.user.timeline.web.model.TimelineFindRequest;
import dev.simpleapp.twitter.user.timeline.web.model.TimelinePageResponse;
import jakarta.validation.Valid;
import org.springframework.validation.annotation.Validated;

@Validated
public interface TimelineFindUseCase {
    TimelinePageResponse findTimelines(@Valid TimelineFindRequest findRequest, CurrentUserApiModel currentUserApiModel);
}
