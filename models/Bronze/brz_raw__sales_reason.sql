-- models/Bronze/brz_raw__sales_reason.sql
select
    cast(SalesReasonID as string) as sales_reason_id,
    cast(Name as string) as name,
    ReasonType as reason_type,
    cast(cast(ModifiedDate as string) as date) as modified_date

from {{ source('raw', 'salesreason') }}