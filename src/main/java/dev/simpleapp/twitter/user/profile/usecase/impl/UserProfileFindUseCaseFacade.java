package dev.simpleapp.twitter.user.profile.usecase.impl;

import dev.simpleapp.twitter.user.profile.mapper.UserProfilePageToUserProfilePageResponseMapper;
import dev.simpleapp.twitter.user.profile.model.UserProfile;
import dev.simpleapp.twitter.user.profile.service.UserProfileService;
import dev.simpleapp.twitter.user.profile.usecase.UserProfileFindUseCase;
import dev.simpleapp.twitter.user.profile.web.model.UserProfilePageResponse;
import dev.simpleapp.twitter.user.profile.web.model.UserProfilesFindRequest;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Component;

import static dev.simpleapp.twitter.user.profile.model.UserProfile_.NICKNAME;

@Component
public class UserProfileFindUseCaseFacade implements UserProfileFindUseCase {

    private final UserProfileService userProfileService;
    public final UserProfilePageToUserProfilePageResponseMapper mapper;

    public UserProfileFindUseCaseFacade(UserProfileService userProfileService,
                                        UserProfilePageToUserProfilePageResponseMapper mapper) {
        this.userProfileService = userProfileService;
        this.mapper = mapper;
    }

    @Override
    public UserProfilePageResponse findUserProfiles(UserProfilesFindRequest findRequest) {
        Sort sort = Sort.by(Sort.Direction.ASC, NICKNAME);

        Pageable pageable = PageRequest.of(findRequest.page(), findRequest.limit(), sort);

        Page<UserProfile> pageableResult;

        if (findRequest.searchName() == null) {
            pageableResult = userProfileService.findAllUserProfiles(pageable);
        } else {
            pageableResult = userProfileService.findAllUserProfilesNicknameLike(findRequest.searchName(), pageable);
        }

        return this.mapper.map(pageableResult);
    }
}
