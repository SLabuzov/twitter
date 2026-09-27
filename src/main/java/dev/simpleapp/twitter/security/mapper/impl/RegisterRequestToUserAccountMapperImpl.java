package dev.simpleapp.twitter.security.mapper.impl;

import dev.simpleapp.twitter.common.exception.TwitterException;
import dev.simpleapp.twitter.common.i18n.MessageProvider;
import dev.simpleapp.twitter.security.mapper.RegisterRequestToUserAccountMapper;
import dev.simpleapp.twitter.security.model.UserAccount;
import dev.simpleapp.twitter.security.model.UserRole;
import dev.simpleapp.twitter.security.service.UserRoleService;
import dev.simpleapp.twitter.security.web.model.RegisterRequest;
import java.util.Locale;
import java.util.Set;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;

@Component
public class RegisterRequestToUserAccountMapperImpl implements RegisterRequestToUserAccountMapper {

    private final UserRoleService userRoleService;
    private final PasswordEncoder passwordEncoder;
    private final MessageProvider messageProvider;

    public RegisterRequestToUserAccountMapperImpl(UserRoleService userRoleService,
                                                  PasswordEncoder passwordEncoder,
                                                  MessageProvider messageProvider) {
        this.userRoleService = userRoleService;
        this.passwordEncoder = passwordEncoder;
        this.messageProvider = messageProvider;
    }

    @Override
    public UserAccount map(RegisterRequest registerRequest) {
        UserRole userRole = this.userRoleService
                .findUserRole()
                .orElseThrow(() -> new TwitterException(
                        messageProvider.getMessage("error.auth.role.not.found")
                ));

        UserAccount userAccount = new UserAccount();
        userAccount.setUsername(registerRequest.username().toLowerCase(Locale.ROOT));
        userAccount.setPassword(this.passwordEncoder.encode(registerRequest.password()));
        userAccount.setAuthorities(Set.of(userRole));

        return userAccount;
    }
}
