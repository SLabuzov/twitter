package dev.simpleapp.twitter.user.profile.usecase.model;

import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;

public record UserProfilesFindQuery(
        @Min(0) int page,
        @Min(25) @Max(100) int limit,
        String searchName
) {
}
