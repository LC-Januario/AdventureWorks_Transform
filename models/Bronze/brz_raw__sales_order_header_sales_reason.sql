-- models/Bronze/brz_raw__sales_order_header_sales_reason.sql
select
    cast(SalesOrderID as string) as sales_order_id,
    cast(SalesReasonID as string) as sales_reason_id,
    cast(cast(ModifiedDate as string) as date) as modified_date

from {{ source('raw', 'sales_order_header_sales_reason') }}