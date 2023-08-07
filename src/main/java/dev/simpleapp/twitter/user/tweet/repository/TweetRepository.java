package dev.simpleapp.twitter.user.tweet.repository;

import dev.simpleapp.twitter.user.tweet.model.Tweet;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TweetRepository extends JpaRepository<Tweet, Long> {
}
