package dev.simpleapp.twitter.security.usecase.impl;

import dev.simpleapp.twitter.security.mapper.RegisterRequestToUserAccountMapper;
import dev.simpleapp.twitter.security.model.UserAccount;
import dev.simpleapp.twitter.security.service.UserAccountService;
import dev.simpleapp.twitter.security.usecase.RegisterUserAccountUseCase;
import dev.simpleapp.twitter.security.web.model.RegisterRequest;
import org.springframework.stereotype.Component;

@Component
public class RegisterUserAccountUseCaseFacade implements RegisterUserAccountUseCase {

    private final UserAccountService userAccountService;
    private final RegisterRequestToUserAccountMapper mapper;

    public RegisterUserAccountUseCaseFacade(UserAccountService userAccountService,
                                            RegisterRequestToUserAccountMapper mapper) {
        this.userAccountService = userAccountService;
        this.mapper = mapper;
    }

    @Override
    public void register(RegisterRequest registerRequest) {
        UserAccount userAccount = this.mapper.map(registerRequest);
        this.userAccountService.createUserAccount(userAccount);
    }
}
