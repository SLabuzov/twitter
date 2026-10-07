package dev.simpleapp.twitter.user.profile.usecase.impl;

import dev.simpleapp.twitter.user.profile.api.event.ProfileCreatedEvent;
import dev.simpleapp.twitter.user.profile.mapper.UserProfileRegisterCommandToUserProfileMapper;
import dev.simpleapp.twitter.user.profile.model.UserProfile;
import dev.simpleapp.twitter.user.profile.service.UserProfileService;
import dev.simpleapp.twitter.user.profile.usecase.UserProfileRegisterUseCase;
import dev.simpleapp.twitter.user.profile.usecase.model.UserProfileRegisterCommand;
import org.springframework.context.ApplicationEventPublisher;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

@Component
@Transactional
public class UserProfileRegisterUseCaseFacade implements UserProfileRegisterUseCase {

    private final UserProfileService userProfileService;
    private final ApplicationEventPublisher eventPublisher;
    private final UserProfileRegisterCommandToUserProfileMapper mapper;

    public UserProfileRegisterUseCaseFacade(UserProfileService userProfileService,
                                            ApplicationEventPublisher eventPublisher,
                                            UserProfileRegisterCommandToUserProfileMapper mapper) {
        this.userProfileService = userProfileService;
        this.eventPublisher = eventPublisher;
        this.mapper = mapper;
    }

    @Override
    public void registerUserProfile(UserProfileRegisterCommand registerCommand) {
        UserProfile userProfile = this.mapper.map(registerCommand);

        UserProfile saved = this.userProfileService.createUserProfile(userProfile);

        eventPublisher.publishEvent(new ProfileCreatedEvent(
                saved.getId(),
                saved.getNickname()
        ));
    }
}
