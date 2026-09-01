package dev.simpleapp.twitter.user.timeline.service.impl;

import dev.simpleapp.twitter.user.timeline.model.TimelineFeed;
import dev.simpleapp.twitter.user.timeline.repository.TimelineFeedRepository;
import dev.simpleapp.twitter.user.timeline.service.TimelineFeedService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
public class TimelineFeedServiceImpl implements TimelineFeedService {

    private final TimelineFeedRepository timelineFeedRepository;

    public TimelineFeedServiceImpl(TimelineFeedRepository timelineFeedRepository) {
        this.timelineFeedRepository = timelineFeedRepository;
    }

    @Override
    public Page<TimelineFeed> getReaderFeedSlice(long readerId, Pageable pageable) {
        return timelineFeedRepository.findSliceByReaderId(readerId, pageable);
    }
}
