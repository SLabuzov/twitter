package dev.simpleapp.twitter.user.profile.usecase;

import dev.simpleapp.twitter.common.dto.PageResponse;
import dev.simpleapp.twitter.user.profile.usecase.model.UserProfilesFindQuery;
import dev.simpleapp.twitter.user.profile.web.model.UserProfileResponse;
import jakarta.validation.Valid;
import org.springframework.validation.annotation.Validated;

@Validated
public interface UserProfileFindUseCase {
    PageResponse<UserProfileResponse> findUserProfiles(@Valid UserProfilesFindQuery findQuery);
}
