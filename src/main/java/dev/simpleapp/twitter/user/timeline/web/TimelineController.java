package dev.simpleapp.twitter.user.timeline.web;

import dev.simpleapp.twitter.user.timeline.usecase.TimelineFindUseCase;
import dev.simpleapp.twitter.user.timeline.web.model.TimelineFindRequest;
import dev.simpleapp.twitter.user.timeline.web.model.TimelinePageResponse;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1/timelines")
public class TimelineController {

    private final TimelineFindUseCase timelineFindUseCase;

    public TimelineController(TimelineFindUseCase timelineFindUseCase) {
        this.timelineFindUseCase = timelineFindUseCase;
    }

    @GetMapping
    public TimelinePageResponse allFollowers(@RequestParam("page") int page, @RequestParam("limit") int limit) {
        TimelineFindRequest findRequest = new TimelineFindRequest(page, limit);
        return timelineFindUseCase.findTimelines(findRequest);
    }
}
