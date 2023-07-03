package dev.simpleapp.twitter.security.service.impl;

import dev.simpleapp.twitter.security.model.UserRole;
import dev.simpleapp.twitter.security.repository.UserRoleRepository;
import dev.simpleapp.twitter.security.service.UserRoleService;
import java.util.Optional;
import org.springframework.stereotype.Service;

@Service
public class UserRoleServiceImpl implements UserRoleService {

    private final UserRoleRepository userRoleRepository;

    public UserRoleServiceImpl(UserRoleRepository userRoleRepository) {
        this.userRoleRepository = userRoleRepository;
    }

    @Override
    public Optional<UserRole> findUserRole() {
        return this.userRoleRepository.findByAuthority("ROLE_USER");
    }
}
