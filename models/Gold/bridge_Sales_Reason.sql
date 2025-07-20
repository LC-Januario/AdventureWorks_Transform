-- models/Gold/bridge_Sales_Reason.sql
with bdg_sales_reason as (
    select * from {{ ref('svr_raw__sales_order_header_sales_reason') }}
)

select *
from bdg_sales_reason