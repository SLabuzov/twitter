package dev.simpleapp.twitter.user.subscription.web.model;

import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;

public record FollowerFindRequest(
        @Min(0) int page,
        @Min(25) @Max(100) int limit
) {
}
