package dev.simpleapp.twitter.security.web.model;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;

public record LoginRequest(
        @Email
        @NotBlank
        String username,
        @NotBlank
        String password) {
}
