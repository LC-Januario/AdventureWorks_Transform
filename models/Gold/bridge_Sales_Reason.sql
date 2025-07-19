-- models/Gold/bridge_Sales_Reason.sql
with stg_sales_reason as (
    select * from {{ ref('svr_raw__sales_order_header_sales_reason') }}
)

select *
from stg_sales_reason