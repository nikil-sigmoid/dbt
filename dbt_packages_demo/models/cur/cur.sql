
-- Use the `ref` function to select from other models

{{ config(materialized='table') }}


select id, amount as amount_dlrs, {{ dollars_to_rs('amount') }} as amount_rs, {{ dbt_date.tomorrow() }} as tomorrow, NOW() as event_time
from {{ ref('raw') }}




