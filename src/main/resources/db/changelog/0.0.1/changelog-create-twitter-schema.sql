--liquibase formatted sql

--changeset SergeyLabuzov:create-twitter-schema
--comment create new schema
create schema twitter;
--rollback drop schema twitter;
