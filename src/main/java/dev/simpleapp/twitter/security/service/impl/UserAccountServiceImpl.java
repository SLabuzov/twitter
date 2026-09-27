package dev.simpleapp.twitter.security.service.impl;

import dev.simpleapp.twitter.common.exception.TwitterException;
import dev.simpleapp.twitter.common.i18n.MessageProvider;
import dev.simpleapp.twitter.security.model.UserAccount;
import dev.simpleapp.twitter.security.repository.UserAccountRepository;
import dev.simpleapp.twitter.security.service.UserAccountService;
import java.util.Optional;
import org.springframework.stereotype.Service;

@Service
public class UserAccountServiceImpl implements UserAccountService {

    private final UserAccountRepository userAccountRepository;
    private final MessageProvider messageProvider;

    public UserAccountServiceImpl(UserAccountRepository userAccountRepository, MessageProvider messageProvider) {
        this.userAccountRepository = userAccountRepository;
        this.messageProvider = messageProvider;
    }

    @Override
    public void createUserAccount(UserAccount userAccount) {
        boolean isUsernameExists = this.userAccountRepository.existsByUsername(userAccount.getUsername());

        if (isUsernameExists) {
            throw new TwitterException(messageProvider.getMessage("error.auth.account.already.exists"));
        }

        this.userAccountRepository.save(userAccount);
    }

    @Override
    public Optional<UserAccount> findUserByUsername(String username) {
        return this.userAccountRepository.findByUsername(username);
    }
}
