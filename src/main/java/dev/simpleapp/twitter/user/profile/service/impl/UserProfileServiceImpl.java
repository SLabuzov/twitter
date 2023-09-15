package dev.simpleapp.twitter.user.profile.service.impl;

import dev.simpleapp.twitter.user.profile.model.UserProfile;
import dev.simpleapp.twitter.user.profile.repository.UserProfileRepository;
import dev.simpleapp.twitter.user.profile.service.UserProfileService;
import java.util.Optional;
import org.springframework.stereotype.Service;

@Service
public class UserProfileServiceImpl implements UserProfileService {

    private final UserProfileRepository userProfileRepository;

    public UserProfileServiceImpl(UserProfileRepository userProfileRepository) {
        this.userProfileRepository = userProfileRepository;
    }

    @Override
    public void createUserProfile(UserProfile userProfile) {
        if (this.userProfileRepository.existsById(userProfile.getId())) {
            String errorMessage = String
                    .format(
                            "Профиль пользователя с Id = %d ранее уже был создан",
                            userProfile.getId()
                    );
            throw new RuntimeException(errorMessage);
        }

        if (this.userProfileRepository.existsByNickname(userProfile.getNickname())) {
            String errorMessage = String
                    .format(
                            "Профиль пользователя с Nickname = %s ранее уже был создан",
                            userProfile.getNickname()
                    );
            throw new RuntimeException(errorMessage);
        }

        this.userProfileRepository.save(userProfile);
    }

    @Override
    public UserProfile findUserProfileByIdRequired(long userProfileId) {
        return this.userProfileRepository.findById(userProfileId)
                .orElseThrow(() -> {
            String errorMessage = String.format(
                    "Профиля пользователя с id = %d  в системе не существует",
                    userProfileId
            );
            return new RuntimeException(errorMessage);
        });
    }
}
