package dev.simpleapp.twitter.security.repository;

import dev.simpleapp.twitter.security.model.UserRole;
import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRoleRepository extends JpaRepository<UserRole, Long> {
    Optional<UserRole> findByAuthority(String authority);
}
