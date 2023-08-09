package dev.simpleapp.twitter.user.tweet.web.model;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;

public record TweetEditRequest(
        @NotNull
        long id,
        @NotBlank
        @Size(min = 10, max = 180)
        String message
) {
}
