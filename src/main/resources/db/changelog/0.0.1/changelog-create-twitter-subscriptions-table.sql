--liquibase formatted sql

--changeset SergeyLabuzov:create-twitter-subscriptions-table
--comment create table twitter.subscriptions
create table twitter.subscriptions
(
    id                 serial primary key,
    follower_id        integer   not null,
    followed_id        integer   not null,
    created_timestamp  timestamp not null
);
--rollback drop table twitter.subscriptions;

--changeset SergeyLabuzov:add-twitter-subscriptions-table-constraints
--comment add constraints to twitter.subscriptions table
alter table twitter.subscriptions
    add constraint follower__user_profiles__fk
        foreign key (follower_id) references twitter.user_profiles (id);

alter table twitter.subscriptions
    add constraint followed__user_profiles__fk
        foreign key (followed_id) references twitter.user_profiles (id);

alter table twitter.subscriptions
    add constraint subscriptions__relationship__unique
        unique (follower_id, followed_id);
--rollback alter table twitter.subscriptions drop constraint follower__user_profiles__fk;
--rollback alter table twitter.subscriptions drop constraint followed__user_profiles__fk;
--rollback alter table twitter.subscriptions drop constraint subscriptions__relationship__unique;
