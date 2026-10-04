package dev.simpleapp.twitter.statistic.profile.model;

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
@Table(schema = "twitter", name = "profile_stats")
public class ProfileStats {

    @Id
    @Column(name = "profile_id")
    private Long profileId;

    @Column(name = "tweets_count", nullable = false)
    private long tweetsCount;

    @Column(name = "followers_count", nullable = false)
    private long followersCount;

    @Column(name = "following_count", nullable = false)
    private long followingCount;

    @Column(name = "likes_received_count", nullable = false)
    private long likesReceivedCount;

    @Column(name = "retweets_received_count", nullable = false)
    private long retweetsReceivedCount;

    @Column(name = "replies_count", nullable = false)
    private long repliesCount;

    public ProfileStats(Long profileId) {
        this.profileId = profileId;
        this.tweetsCount = 0;
        this.followersCount = 0;
        this.followingCount = 0;
        this.likesReceivedCount = 0;
        this.retweetsReceivedCount = 0;
        this.repliesCount = 0;
    }
}
