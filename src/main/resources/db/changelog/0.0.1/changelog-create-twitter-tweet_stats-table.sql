--liquibase formatted sql

--changeset SergeyLabuzov:create-twitter-tweet_stats-table
--comment create tweet_stats table for denormalized tweet counters
CREATE TABLE twitter.tweet_stats
(
    tweet_id       BIGINT PRIMARY KEY,
    likes_count    BIGINT NOT NULL DEFAULT 0,
    retweets_count BIGINT NOT NULL DEFAULT 0,
    replies_count  BIGINT NOT NULL DEFAULT 0,
    CONSTRAINT tweet_stats__tweets__fk
        FOREIGN KEY (tweet_id)
            REFERENCES twitter.tweets (id)
            ON DELETE CASCADE
);
--rollback DROP TABLE twitter.tweet_stats;

--changeset SergeyLabuzov:backfill-twitter-tweet_stats-table
--comment initialize tweet_stats for existing tweets
INSERT INTO twitter.tweet_stats (
    tweet_id,
    likes_count,
    retweets_count,
    replies_count
)
SELECT
    t.id AS tweet_id,
    0 AS likes_count,
    0 AS retweets_count,
    0 AS replies_count
FROM twitter.tweets t
ON CONFLICT (tweet_id) DO NOTHING;

--rollback DELETE FROM twitter.tweet_stats;
