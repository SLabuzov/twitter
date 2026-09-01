package dev.simpleapp.twitter.user.timeline.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.IdClass;
import jakarta.persistence.Table;
import java.time.Instant;
import lombok.Getter;
import org.hibernate.annotations.Immutable;


@Getter
@Immutable
@IdClass(TimelineFeedId.class)
@Entity
@Table(schema = "twitter", name = "timeline_feed")
public class TimelineFeed {

    @Id
    @Column(name = "reader_id")
    private Long readerId;

    @Id
    @Column(name = "tweet_id")
    private Long tweetId;

    @Column(name = "author_id")
    private Long authorId;

    private String message;

    @Column(name = "created_timestamp")
    private Instant createdTimestamp;

    @Column(name = "author_nickname")
    private String authorNickname;

    @Column(name = "author_image_link")
    private String authorImageLInk;

    protected TimelineFeed() {

    }
}
