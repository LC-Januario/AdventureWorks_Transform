-- models/Bronze/brz_raw__sales_order_detail.sql
select
    cast(SalesOrderID as string) as sales_order_id,
    cast(SalesOrderDetailID as string) as sales_order_detail_id,
    CarrierTrackingNumber as carrier_tracking_number,
    OrderQty as order_qty,
    cast(ProductID as string) as product_id,
    cast(SpecialOfferID as string) as special_offer_id,
    UnitPrice as unit_price,
    UnitPriceDiscount as unit_price_discount,
    LineTotal as line_total,
    cast(rowguid as string) as rowguid,
    cast(cast(ModifiedDate as string) as date) as modified_date

from {{ source('raw', 'salesorderdetail') }}