-- models/Silver/svr_raw__sales_order_header_sales_reason.sql

with sales_order_header_sales_reason as (
    select * from {{ ref('brz_raw__sales_order_header_sales_reason') }}
), sales_reason as (
    select * from {{ ref('brz_raw__sales_reason') }}
)

select
    -- Order Reason info
    sohsr.sales_order_id,
    sohsr.sales_reason_id,
    sohsr.modified_date as header_reason_modified_date,

    -- Reason details
    sr.name as reason_name,
    sr.reason_type,
    sr.modified_date as reason_modified_date

from sales_order_header_sales_reason as sohsr
left join sales_reason as sr
    on sohsr.sales_reason_id = sr.sales_reason_id