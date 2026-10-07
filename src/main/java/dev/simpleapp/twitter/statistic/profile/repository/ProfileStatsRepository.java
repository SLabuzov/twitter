package dev.simpleapp.twitter.statistic.profile.repository;

import dev.simpleapp.twitter.statistic.profile.model.ProfileStats;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface ProfileStatsRepository extends JpaRepository<ProfileStats, Long> {

    @Modifying
    @Query("UPDATE ProfileStats s SET s.tweetsCount = s.tweetsCount + 1 WHERE s.profileId = :profileId")
    void incrementTweetsCount(@Param("profileId") long profileId);

    @Modifying
    @Query("UPDATE ProfileStats s SET s.tweetsCount = s.tweetsCount - 1 WHERE s.profileId = :profileId")
    void decrementTweetsCount(@Param("profileId") long profileId);

    @Modifying
    @Query("UPDATE ProfileStats s SET s.followersCount = s.followersCount + 1 WHERE s.profileId = :profileId")
    void incrementFollowersCount(@Param("profileId") long profileId);

    @Modifying
    @Query("UPDATE ProfileStats s SET s.followingCount = s.followingCount + 1 WHERE s.profileId = :profileId")
    void incrementFollowingCount(@Param("profileId") long profileId);

    @Modifying
    @Query("UPDATE ProfileStats s SET s.followersCount = s.followersCount - 1 WHERE s.profileId = :profileId")
    void decrementFollowersCount(long followedId);

    @Modifying
    @Query("UPDATE ProfileStats s SET s.followingCount = s.followingCount - 1 WHERE s.profileId = :profileId")
    void decrementFollowingCount(@Param("profileId") long profileId);
}
