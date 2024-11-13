package dev.simpleapp.twitter.user.profile.web;

import dev.simpleapp.twitter.user.profile.usecase.UserProfileFindCurrentUseCase;
import dev.simpleapp.twitter.user.profile.usecase.UserProfileRegisterUseCase;
import dev.simpleapp.twitter.user.profile.web.model.UserProfileRegisterRequest;
import dev.simpleapp.twitter.user.profile.web.model.UserProfileResponse;
import jakarta.validation.Valid;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1/user-profiles")
public class UserProfileController {

    private final UserProfileRegisterUseCase registerUseCase;
    private final UserProfileFindCurrentUseCase findCurrentUseCase;

    public UserProfileController(
            UserProfileRegisterUseCase registerUseCase,
            UserProfileFindCurrentUseCase findCurrentUseCase) {
        this.registerUseCase = registerUseCase;
        this.findCurrentUseCase = findCurrentUseCase;
    }

    @PostMapping()
    @ResponseStatus(HttpStatus.CREATED)
    public void registerUserProfile(@Valid @RequestBody UserProfileRegisterRequest registerRequest) {
        this.registerUseCase.registerUserProfile(registerRequest);
    }

    @GetMapping("/current")
    public UserProfileResponse currentUserProfile() {
        return this.findCurrentUseCase.currentUserProfile();
    }
}
