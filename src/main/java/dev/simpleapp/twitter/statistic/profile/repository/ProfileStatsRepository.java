package dev.simpleapp.twitter.statistic.profile.repository;

import dev.simpleapp.twitter.statistic.profile.model.ProfileStats;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProfileStatsRepository extends JpaRepository<ProfileStats, Long> {
}
