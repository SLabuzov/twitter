package dev.simpleapp.twitter.user.tweet.repository;

import dev.simpleapp.twitter.user.profile.model.UserProfile;
import dev.simpleapp.twitter.user.tweet.model.Tweet;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TweetRepository extends JpaRepository<Tweet, Long> {

    List<Tweet> findAllByUserProfile(UserProfile userProfile);
}
