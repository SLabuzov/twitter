package dev.simpleapp.twitter.statistic.profile.listener;

import dev.simpleapp.twitter.statistic.profile.service.ProfileStatsService;
import dev.simpleapp.twitter.user.profile.api.event.ProfileCreatedEvent;
import org.springframework.stereotype.Component;
import org.springframework.transaction.event.TransactionPhase;
import org.springframework.transaction.event.TransactionalEventListener;

@Component
public class ProfileStatsListener {

    private final ProfileStatsService statsService;

    public ProfileStatsListener(ProfileStatsService statsService) {
        this.statsService = statsService;
    }

    @TransactionalEventListener(phase = TransactionPhase.BEFORE_COMMIT)
    public void onProfileCreated(ProfileCreatedEvent event) {
        statsService.initializeProfileStats(event.userProfileId());
    }
}
