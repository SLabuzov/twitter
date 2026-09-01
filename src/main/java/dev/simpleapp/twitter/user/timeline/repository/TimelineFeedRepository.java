package dev.simpleapp.twitter.user.timeline.repository;

import dev.simpleapp.twitter.user.timeline.model.TimelineFeed;
import dev.simpleapp.twitter.user.timeline.model.TimelineFeedId;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TimelineFeedRepository extends JpaRepository<TimelineFeed, TimelineFeedId> {

    Page<TimelineFeed> findSliceByReaderId(long readerId, Pageable pageable);
}
