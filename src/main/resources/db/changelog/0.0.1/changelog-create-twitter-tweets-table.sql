--liquibase formatted sql

--changeset SergeyLabuzov:create-twitter-tweets-table
--comment create table twitter.tweets
create table twitter.tweets
(
    id                 serial primary key,
    message            varchar(180) not null,
    user_profile_id    integer      not null,
    created_timestamp  timestamp    not null
);
--rollback drop table twitter.tweets;

--changeset SergeyLabuzov:add-twitter-user_profiles-table-constraints
--comment add constraints to twitter.tweets table
alter table twitter.tweets
    add constraint tweets__user_profiles__fk
        foreign key (user_profile_id) references twitter.user_profiles (id);

--rollback alter table twitter.tweets drop constraint tweets__user_profiles__fk;


--changeset SergeyLabuzov:add-twitter-user_profiles-table-column-modified_timestamp
--comment add column modified_timestamp to twitter.tweets table
alter table twitter.tweets
    add column modified_timestamp timestamp;

update twitter.tweets
set modified_timestamp = created_timestamp
where modified_timestamp is null;

alter table twitter.tweets
    alter column modified_timestamp set not null;
--rollback alter table twitter.tweets drop column modified_timestamp;
