package dev.simpleapp.twitter.user.tweet.repository;

import dev.simpleapp.twitter.user.profile.model.UserProfile;
import dev.simpleapp.twitter.user.tweet.model.Tweet;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface TweetRepository extends JpaRepository<Tweet, Long> {

    Page<Tweet> findAllByUserProfile(UserProfile userProfile, Pageable pageable);

    @Query(""" 
                    SELECT t
                    FROM Tweet t
                    JOIN FETCH t.userProfile up
                    JOIN up.followers flws
                    JOIN flws.follower flw
                    WHERE flw.id = ?1
            """)
    Page<Tweet> findAllFollowerTweets(long followerId, Pageable pageable);
}
