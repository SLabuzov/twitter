package dev.simpleapp.twitter.security.service;

import dev.simpleapp.twitter.security.api.model.CurrentUserApiModel;
import java.util.Optional;

public interface IdentityApiService {
    Optional<CurrentUserApiModel> currentUserAccount();
}
