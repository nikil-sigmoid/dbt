
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/


{{ config(materialized='table') }}

{{ log('Printing user name got from system environment: ' ~ env_var('POSTGRES_USER'))}}

with source_data as (
    select 1 as id
    union all
    select null as id
    union all
    select 3 as id
)


-- Printing var value in logs

{{ log('Running batman name var: ' ~  var("name") ) }}

select *
from source_data


/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
