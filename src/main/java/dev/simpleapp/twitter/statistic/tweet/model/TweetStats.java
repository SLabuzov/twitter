package dev.simpleapp.twitter.statistic.tweet.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@Entity
@NoArgsConstructor
@Table(schema = "twitter", name = "tweet_stats")
public class TweetStats {

    @Id
    @Column(name = "tweet_id")
    private Long tweetId;

    @Column(name = "likes_count", nullable = false)
    private long likesCount;

    @Column(name = "retweets_count", nullable = false)
    private long retweetsCount;

    @Column(name = "replies_count", nullable = false)
    private long repliesCount;

    public TweetStats(Long tweetId) {
        this.tweetId = tweetId;
        this.likesCount = 0;
        this.retweetsCount = 0;
        this.repliesCount = 0;
    }

}
