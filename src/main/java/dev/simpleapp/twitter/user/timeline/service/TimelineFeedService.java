package dev.simpleapp.twitter.user.timeline.service;

import dev.simpleapp.twitter.user.timeline.model.TimelineFeed;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface TimelineFeedService {

    Page<TimelineFeed> getReaderFeedSlice(long readerId, Pageable pageable);
}
