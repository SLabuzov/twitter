--liquibase formatted sql

--changeset SergeyLabuzov:fill-twitter-tweets-table
--comment fill table twitter.tweets
ANALYZE public.famous_quotes;

INSERT INTO twitter.tweets
    (message, user_profile_id, created_timestamp, modified_timestamp)
WITH
    cte_row_number_user_profiles AS (
        SELECT ROW_NUMBER( ) OVER () AS row_number,
               COUNT( 1 ) OVER ()    AS max_row_number,
               up.id
        FROM twitter.user_profiles up
    ),
    cte_row_number_famous_quotes AS (
        SELECT ROW_NUMBER( ) OVER () AS row_number,
               fq.*
        FROM public.famous_quotes fq
    )
SELECT fq.quote,
       up.id,
       NOW( ) - ( fq.row_number || ' min' )::interval,
       NOW( ) - ( fq.row_number || ' min' )::interval
FROM cte_row_number_user_profiles up
         JOIN cte_row_number_famous_quotes fq
              ON MOD( up.row_number, up.max_row_number ) = MOD( fq.row_number, up.max_row_number );

ANALYZE twitter.tweets;
--rollback truncate table twitter.tweets;
--rollback drop table public.famous_quotes;
