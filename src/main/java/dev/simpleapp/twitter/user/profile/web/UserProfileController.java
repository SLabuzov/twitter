package dev.simpleapp.twitter.user.profile.web;

import dev.simpleapp.twitter.user.profile.usecase.UserProfileFindCurrentUseCase;
import dev.simpleapp.twitter.user.profile.usecase.UserProfileFindUseCase;
import dev.simpleapp.twitter.user.profile.usecase.UserProfileRegisterUseCase;
import dev.simpleapp.twitter.user.profile.web.model.UserProfilePageResponse;
import dev.simpleapp.twitter.user.profile.web.model.UserProfileRegisterRequest;
import dev.simpleapp.twitter.user.profile.web.model.UserProfileResponse;
import dev.simpleapp.twitter.user.profile.web.model.UserProfilesFindRequest;
import jakarta.validation.Valid;
import jakarta.websocket.server.PathParam;
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
    private final UserProfileFindUseCase findUseCase;

    public UserProfileController(
            UserProfileRegisterUseCase registerUseCase,
            UserProfileFindCurrentUseCase findCurrentUseCase,
            UserProfileFindUseCase findUseCase) {
        this.registerUseCase = registerUseCase;
        this.findCurrentUseCase = findCurrentUseCase;
        this.findUseCase = findUseCase;
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

    @GetMapping
    public UserProfilePageResponse findUserProfiles(
            @PathParam("page") int page,
            @PathParam("limit") int limit,
            @PathParam("name") String name
    ) {
        UserProfilesFindRequest findRequest = new UserProfilesFindRequest(page, limit, name);
        return this.findUseCase.findUserProfiles(findRequest);
    }
}
