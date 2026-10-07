package dev.simpleapp.twitter.user.profile.service.impl;

import dev.simpleapp.twitter.common.exception.TwitterException;
import dev.simpleapp.twitter.common.i18n.MessageProvider;
import dev.simpleapp.twitter.user.profile.model.UserProfile;
import dev.simpleapp.twitter.user.profile.repository.UserProfileRepository;
import dev.simpleapp.twitter.user.profile.service.UserProfileService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
public class UserProfileServiceImpl implements UserProfileService {

    private final UserProfileRepository userProfileRepository;
    private final MessageProvider messageProvider;

    public UserProfileServiceImpl(UserProfileRepository userProfileRepository, MessageProvider messageProvider) {
        this.userProfileRepository = userProfileRepository;
        this.messageProvider = messageProvider;
    }

    @Override
    public UserProfile createUserProfile(UserProfile userProfile) {
        if (this.userProfileRepository.existsById(userProfile.getId())) {
            throw new TwitterException(
                    messageProvider.getMessage("error.profile.already.exists.by.id", userProfile.getId())
            );
        }

        if (this.userProfileRepository.existsByNickname(userProfile.getNickname())) {
            throw new TwitterException(
                    messageProvider.getMessage("error.profile.already.exists.by.nickname", userProfile.getNickname())
            );
        }

        return this.userProfileRepository.save(userProfile);
    }

    @Override
    public UserProfile findUserProfileByIdRequired(long userProfileId) {
        return this.userProfileRepository.findById(userProfileId)
                .orElseThrow(() -> new TwitterException(
                        messageProvider.getMessage("error.profile.not.found", userProfileId)
                ));
    }

    @Override
    public Page<UserProfile> findAllUserProfiles(Pageable pageable) {
        return userProfileRepository.findAll(pageable);
    }

    @Override
    public Page<UserProfile> findAllUserProfilesNicknameLike(String searchingName, Pageable pageable) {
        return userProfileRepository.findAllByNicknameContainingIgnoreCase(searchingName, pageable);
    }

    @Override
    public UserProfile updateNickname(UserProfile currentProfile, String nickname) {
        if (this.userProfileRepository.existsByNickname(nickname)) {
            throw new TwitterException(
                    messageProvider.getMessage("error.profile.nickname.taken", nickname)
            );
        }
        currentProfile.setNickname(nickname);

        return this.userProfileRepository.save(currentProfile);
    }

    @Override
    public UserProfile updateImageLink(UserProfile currentProfile, String imageLink) {
        currentProfile.setImageLink(imageLink);

        return this.userProfileRepository.save(currentProfile);
    }

    @Override
    public UserProfile updateBio(UserProfile currentProfile, String bio) {
        currentProfile.setBio(bio);

        return this.userProfileRepository.save(currentProfile);
    }
}
