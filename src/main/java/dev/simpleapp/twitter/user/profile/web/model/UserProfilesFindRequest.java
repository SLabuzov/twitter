package dev.simpleapp.twitter.user.profile.web.model;

import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;

public record UserProfilesFindRequest(
        @Min(0) int page,
        @Min(25) @Max(100) int limit,
        String searchName
) {
}
