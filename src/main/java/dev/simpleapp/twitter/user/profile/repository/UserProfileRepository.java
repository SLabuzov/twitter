package dev.simpleapp.twitter.user.profile.repository;

import dev.simpleapp.twitter.user.profile.model.UserProfile;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserProfileRepository extends JpaRepository<UserProfile, Long> {
    boolean existsByNickname(String nickname);

    Page<UserProfile> findAllByNicknameContainingIgnoreCase(String nickname, Pageable pageable);
}
