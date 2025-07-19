-- models/Gold/fact_Sales_Detail.sql
with stg_sales_detail as (
    select * from {{ ref('brz_raw__sales_order_detail') }}
)

select *
from stg_sales_detail