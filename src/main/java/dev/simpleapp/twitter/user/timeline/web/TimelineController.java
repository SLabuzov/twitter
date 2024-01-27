package dev.simpleapp.twitter.user.timeline.web;

import dev.simpleapp.twitter.user.timeline.usecase.TimelineFindUseCase;
import dev.simpleapp.twitter.user.timeline.web.model.TimelineFindRequest;
import dev.simpleapp.twitter.user.timeline.web.model.TimelinePageResponse;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.security.SecurityRequirement;
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
    @Operation(security = {@SecurityRequirement(name = "bearer-key")})
    @ApiResponses(value = {
            @ApiResponse(
                    responseCode = "200",
                    description = "successful operation",
                    content = {@Content(
                            mediaType = "application/json",
                            schema = @Schema(implementation = TimelinePageResponse.class)
                    )}
            ),
            @ApiResponse(
                    responseCode = "401",
                    description = "User not authorized",
                    content = @Content
            )
    })
    public TimelinePageResponse findTimelines(@RequestParam("page") int page, @RequestParam("limit") int limit) {
        TimelineFindRequest findRequest = new TimelineFindRequest(page, limit);
        return timelineFindUseCase.findTimelines(findRequest);
    }
}
