-- models/Gold/dim_Territory.sql
with stg_territory as (
    select * from {{ ref('svr_raw__sales_territory') }}
)

select *
from stg_territory