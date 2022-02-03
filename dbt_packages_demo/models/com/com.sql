-- {{ config(materialized='table') }}


-- select *
-- from {{ ref('cur') }}
-- where id is not null



{{  config(materialized='incremental', unique_key='id')}}


select *, NOW() as cur_time
from {{ ref('cur') }}

{% if is_incremental() %}
  -- this filter will only be applied on an incremental run  
  where event_time > (select max(event_time) from {{ this }})
{% endif %}