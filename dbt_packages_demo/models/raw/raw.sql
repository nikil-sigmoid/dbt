{{ config(materialized='ephemeral') }}

with source_data as (

    select 1 as id, 150 as amount
    union all
    select 2 as id, 250 as amount
    union all
    select 3 as id,  200 as amount
    union all
    select null as id,  100 as amount
)




-- with source_data as (

--     select 1 as id
--     union all
--     select null as id
--     union all
--     select 2 as id
--     union all
--     select 3 as id
-- )


select *
from source_data
