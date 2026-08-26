package dev.simpleapp.twitter.user.profile.usecase;

import dev.simpleapp.twitter.user.profile.usecase.model.UserProfilesFindQuery;
import dev.simpleapp.twitter.user.profile.web.model.UserProfilePageResponse;
import jakarta.validation.Valid;
import org.springframework.validation.annotation.Validated;

@Validated
public interface UserProfileFindUseCase {
    UserProfilePageResponse findUserProfiles(@Valid UserProfilesFindQuery findQuery);
}
