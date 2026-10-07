package dev.simpleapp.twitter.statistic.tweet.repository;

import dev.simpleapp.twitter.statistic.tweet.model.TweetStats;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TweetStatsRepository extends JpaRepository<TweetStats, Long> {
}
