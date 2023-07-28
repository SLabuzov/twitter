package dev.simpleapp.twitter.security.api.service.impl;

import dev.simpleapp.twitter.security.api.model.CurrentUserApiModel;
import dev.simpleapp.twitter.security.api.service.IdentityApiService;
import dev.simpleapp.twitter.security.service.UserAccountService;
import java.util.Optional;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

@Service
public class IdentityApiServiceImpl implements IdentityApiService {

    private final UserAccountService userAccountService;

    public IdentityApiServiceImpl(UserAccountService userAccountService) {
        this.userAccountService = userAccountService;
    }

    @Override
    public Optional<CurrentUserApiModel> currentUserAccount() {

        SecurityContext securityContext = SecurityContextHolder.getContext();
        return Optional
                .ofNullable(securityContext.getAuthentication())
                .map(Authentication::getName)
                .flatMap(this::extractCurrentUserApiModel);
    }

    private Optional<CurrentUserApiModel> extractCurrentUserApiModel(String username) {
        return this.userAccountService.findUserByUsername(username)
                .map(userAccount -> new CurrentUserApiModel(userAccount.getId()));
    }
}
