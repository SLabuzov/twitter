--liquibase formatted sql

--changeset SergeyLabuzov:twitter-user_profiles-add-bio-column
--comment add new column bio to table twitter.user_profiles
ALTER TABLE twitter.user_profiles ADD COLUMN bio VARCHAR(160);
--rollback ALTER TABLE twitter.user_profiles DROP COLUMN bio;
