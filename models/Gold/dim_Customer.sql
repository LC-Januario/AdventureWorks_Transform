-- models/Gold/dim_Customer.sql
with stg_customer as (
    select * from {{ ref('svr_raw__customer') }}
)

select *
from stg_customer