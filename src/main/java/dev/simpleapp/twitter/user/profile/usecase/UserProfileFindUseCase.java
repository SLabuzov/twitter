package dev.simpleapp.twitter.user.profile.usecase;

import dev.simpleapp.twitter.user.profile.web.model.UserProfilePageResponse;
import dev.simpleapp.twitter.user.profile.web.model.UserProfilesFindRequest;
import jakarta.validation.Valid;
import org.springframework.validation.annotation.Validated;

@Validated
public interface UserProfileFindUseCase {
    UserProfilePageResponse findUserProfiles(@Valid UserProfilesFindRequest findRequest);
}
