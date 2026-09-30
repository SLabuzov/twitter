package dev.simpleapp.twitter.user.profile.usecase.impl;

import dev.simpleapp.twitter.common.dto.PageResponse;
import dev.simpleapp.twitter.user.profile.mapper.UserProfileToUserProfileResponseMapper;
import dev.simpleapp.twitter.user.profile.model.UserProfile;
import dev.simpleapp.twitter.user.profile.service.UserProfileService;
import dev.simpleapp.twitter.user.profile.usecase.UserProfileFindUseCase;
import dev.simpleapp.twitter.user.profile.usecase.model.UserProfilesFindQuery;
import dev.simpleapp.twitter.user.profile.web.model.UserProfileResponse;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Component;

import static dev.simpleapp.twitter.user.profile.model.UserProfile_.NICKNAME;

@Component
public class UserProfileFindUseCaseFacade implements UserProfileFindUseCase {

    private final UserProfileService userProfileService;
    public final UserProfileToUserProfileResponseMapper mapper;

    public UserProfileFindUseCaseFacade(UserProfileService userProfileService,
                                        UserProfileToUserProfileResponseMapper mapper) {
        this.userProfileService = userProfileService;
        this.mapper = mapper;
    }

    @Override
    public PageResponse<UserProfileResponse> findUserProfiles(UserProfilesFindQuery findQuery) {
        Sort sort = Sort.by(Sort.Direction.ASC, NICKNAME);

        Pageable pageable = PageRequest.of(findQuery.page(), findQuery.limit(), sort);

        Page<UserProfile> pageableResult;

        if (findQuery.searchName() == null) {
            pageableResult = userProfileService.findAllUserProfiles(pageable);
        } else {
            pageableResult = userProfileService.findAllUserProfilesNicknameLike(findQuery.searchName(), pageable);
        }

        List<UserProfileResponse> userProfiles = pageableResult.stream()
                .map(this.mapper::map)
                .toList();

        return PageResponse.from(pageableResult, userProfiles);
    }
}
