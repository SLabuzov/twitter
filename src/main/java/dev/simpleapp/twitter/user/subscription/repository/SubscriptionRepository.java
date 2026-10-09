package dev.simpleapp.twitter.user.subscription.repository;

import dev.simpleapp.twitter.user.subscription.model.FollowerSubscription;
import dev.simpleapp.twitter.user.subscription.model.Subscription;
import java.util.Optional;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SubscriptionRepository extends JpaRepository<Subscription, Long> {
    boolean existsByFollowerIdAndFollowedId(long follower, long followed);

    Optional<Subscription> findByFollowerIdAndFollowedId(long follower, long followed);

    Page<FollowerSubscription> findAllByFollowedId(long author, Pageable pageable);
}
