-- models/Gold/dim_Salesperson.sql
with stg_salesperson as (
    select * from {{ ref('svr_raw__sales_person') }}
)

select *
from stg_salesperson