package dev.simpleapp.twitter.user.profile.web.model;

import jakarta.validation.constraints.NotBlank;

public record UserProfileEditRequest(
        @NotBlank
        String nickname,
        @NotBlank
        String imageLink) {
}
