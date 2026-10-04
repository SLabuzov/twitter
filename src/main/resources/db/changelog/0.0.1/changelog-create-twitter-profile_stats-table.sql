--liquibase formatted sql

--changeset SergeyLabuzov:create-twitter-profile_stats-table
--comment create profile_stats table for denormalized counters
CREATE TABLE twitter.profile_stats
(
    profile_id              serial primary key,
    tweets_count            integer not null default 0,
    followers_count         integer not null default 0,
    following_count         integer not null default 0,
    likes_received_count    integer not null default 0,
    retweets_received_count integer not null default 0,
    replies_count           integer not null default 0,
    CONSTRAINT profile_stats__user_profiles__fk
        FOREIGN KEY (profile_id)
            REFERENCES twitter.user_profiles (id)
            ON DELETE CASCADE
);
--rollback DROP TABLE twitter.profile_stats;


--changeset SergeyLabuzov:backfill-twitter-profile_stats-table
--comment initialize profile_stats for existing user profiles
INSERT INTO twitter.profile_stats (
    profile_id,
    tweets_count,
    followers_count,
    following_count,
    likes_received_count,
    retweets_received_count,
    replies_count
)
SELECT
    p.id AS profile_id,

    -- Количество твитов пользователя
    (
        SELECT COUNT(*)
        FROM twitter.tweets t
        WHERE t.user_profile_id = p.id
    ) AS tweets_count,

    -- Количество подписчиков (кто подписан на этого пользователя)
    (
        SELECT COUNT(*)
        FROM twitter.subscriptions s
        WHERE s.followed_id = p.id
    ) AS followers_count,

    -- Количество подписок (на кого подписан этот пользователь)
    (
        SELECT COUNT(*)
        FROM twitter.subscriptions s
        WHERE s.follower_id = p.id
    ) AS following_count,

    -- Количество лайков, полученных на твиты пользователя
    -- на текущий момент не реализовано
    0 AS likes_received_count,

    -- Количество ретвитов твитов пользователя
    -- на текущий момент не реализовано
    0 AS retweets_received_count,

    -- Количество ответов пользователя
    -- на текущий момент не реализовано
    0 AS replies_count

FROM twitter.user_profiles p

ON CONFLICT (profile_id) DO NOTHING;

--rollback DELETE FROM twitter.profile_stats;
