package dev.simpleapp.twitter.security.repository;

import dev.simpleapp.twitter.security.model.UserAccount;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserAccountRepository extends JpaRepository<UserAccount, Long> {

    boolean existsByUsername(String username);
}
