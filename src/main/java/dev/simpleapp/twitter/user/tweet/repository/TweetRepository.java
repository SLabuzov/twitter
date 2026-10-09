package dev.simpleapp.twitter.user.tweet.repository;

import dev.simpleapp.twitter.user.tweet.model.Tweet;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TweetRepository extends JpaRepository<Tweet, Long> {

    Page<Tweet> findAllByUserProfileId(long ownerId, Pageable pageable);

}
