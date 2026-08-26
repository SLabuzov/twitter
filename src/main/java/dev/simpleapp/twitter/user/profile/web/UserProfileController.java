package dev.simpleapp.twitter.user.profile.web;

import dev.simpleapp.twitter.security.api.annotation.CurrentUser;
import dev.simpleapp.twitter.security.api.model.CurrentUserApiModel;
import dev.simpleapp.twitter.user.profile.usecase.UserProfileFindCurrentUseCase;
import dev.simpleapp.twitter.user.profile.usecase.UserProfileFindUseCase;
import dev.simpleapp.twitter.user.profile.usecase.UserProfileRegisterUseCase;
import dev.simpleapp.twitter.user.profile.usecase.model.UserProfileRegisterCommand;
import dev.simpleapp.twitter.user.profile.usecase.model.UserProfilesFindQuery;
import dev.simpleapp.twitter.user.profile.web.model.UserProfilePageResponse;
import dev.simpleapp.twitter.user.profile.web.model.UserProfileRegisterRequest;
import dev.simpleapp.twitter.user.profile.web.model.UserProfileResponse;
import jakarta.validation.Valid;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
    public void registerUserProfile(@CurrentUser CurrentUserApiModel currentUserApiModel,
                                    @Valid @RequestBody UserProfileRegisterRequest registerRequest) {

        var command = new UserProfileRegisterCommand(
                currentUserApiModel,
                registerRequest.nickname(),
                registerRequest.imageLink()
        );

        this.registerUseCase.registerUserProfile(command);
    }

    @GetMapping("/current")
    public UserProfileResponse currentUserProfile(@CurrentUser CurrentUserApiModel currentUserApiModel) {
        return this.findCurrentUseCase.currentUserProfile(currentUserApiModel);
    }

    @GetMapping
    public UserProfilePageResponse findUserProfiles(
            @RequestParam("page") int page,
            @RequestParam("limit") int limit,
            @RequestParam("name") String name
    ) {
        UserProfilesFindQuery findRequest = new UserProfilesFindQuery(page, limit, name);
        return this.findUseCase.findUserProfiles(findRequest);
    }
}
