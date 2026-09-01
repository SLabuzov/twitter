--liquibase formatted sql

--changeset SergeyLabuzov:create-twitter-timeline_feed-view
--comment create new timeline_feed view
create or replace view twitter.timeline_feed as
select
    s.follower_id as reader_id,
    t.id as tweet_id,
    t.user_profile_id as author_id,
    t.message,
    t.created_timestamp,
    p.nickname as author_nickname,
    p.image_link as author_image_link
from twitter.subscriptions s
join twitter.tweets t on t.user_profile_id = s.followed_id
join twitter.user_profiles p on p.id = t.user_profile_id
--rollback drop view twitter.timeline_feed;
