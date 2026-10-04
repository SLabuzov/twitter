package dev.simpleapp.twitter.statistic.profile.service.impl;

import dev.simpleapp.twitter.statistic.profile.model.ProfileStats;
import dev.simpleapp.twitter.statistic.profile.repository.ProfileStatsRepository;
import dev.simpleapp.twitter.statistic.profile.service.ProfileStatsService;
import org.springframework.stereotype.Service;

@Service
public class ProfileStatsServiceImpl implements ProfileStatsService {

    private final ProfileStatsRepository profileStatsRepository;

    public ProfileStatsServiceImpl(ProfileStatsRepository profileStatsRepository) {
        this.profileStatsRepository = profileStatsRepository;
    }

    @Override
    public void initializeProfileStats(long profileId) {
        if (!profileStatsRepository.existsById(profileId)) {
            ProfileStats stats = new ProfileStats(profileId);
            profileStatsRepository.save(stats);
        }
    }
}
