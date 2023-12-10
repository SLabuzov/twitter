--liquibase formatted sql

--changeset SergeyLabuzov:create-public-famous_quotes
--comment create table public.famous_quotes
CREATE TABLE public.famous_quotes
(
    quote varchar(255) NOT NULL
);
--rollback drop table public.famous_quotes;
