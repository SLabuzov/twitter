package dev.simpleapp.twitter.user.profile.web.model;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;
import org.hibernate.validator.constraints.URL;

public record UserProfileRegisterRequest(
        @NotBlank
        @Pattern(regexp = "^[a-zA-Z0-9_]{3,32}$", message = "Никнейм может содержать только буквы, цифры и подчёркивание (3-32 символа)")
        String nickname,
        @NotBlank
        @URL(message = "Ссылка на изображение должна быть валидным URL")
        String imageLink,
        @Size(max = 160, message = "Биография не должна превышать 160 символов")
        String bio) {
}
