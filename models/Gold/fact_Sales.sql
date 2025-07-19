-- models/Gold/fact_Sales.sql
with stg_sales as (
    select * from {{ ref('brz_raw__sales_order_header') }}
)

select *
from stg_sales