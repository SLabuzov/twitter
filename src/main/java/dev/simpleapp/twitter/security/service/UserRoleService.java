package dev.simpleapp.twitter.security.service;

import dev.simpleapp.twitter.security.model.UserRole;
import java.util.Optional;

public interface UserRoleService {
    Optional<UserRole> findUserRole();
}
