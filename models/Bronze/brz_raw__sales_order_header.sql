-- models/Bronze/brz_raw__sales_order_header.sql
select
    cast(SalesOrderID as string) as sales_order_id,
    RevisionNumber as revision_number,
    cast(cast(OrderDate as string) as date) as order_date,
    cast(cast(DueDate as string) as date) as due_date,
    cast(cast(ShipDate as string) as date) as ship_date,
    Status as status,
    OnlineOrderFlag as online_order_flag,
    SalesOrderNumber as sales_order_number,
    PurchaseOrderNumber as purchase_order_number,
    AccountNumber as account_number,
    cast(CustomerID as string) as customer_id,
    cast(SalesPersonID as string) as sales_person_id,
    cast(TerritoryID as string) as territory_id,
    cast(BillToAddressID as string) as bill_to_address_id,
    cast(ShipToAddressID as string) as ship_to_address_id,
    cast(ShipMethodID as string) as ship_method_id,
    cast(CreditCardID as string) as credit_card_id,
    CreditCardApprovalCode as credit_card_approval_code,
    cast(CurrencyRateID as string) as currency_rate_id,
    SubTotal as sub_total

from {{ source('raw', 'salesorderheader') }}