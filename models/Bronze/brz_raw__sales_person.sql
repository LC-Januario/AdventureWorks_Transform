-- models/Bronze/brz_raw__sales_person.sql
select
    cast(BusinessEntityID as string) as business_entity_id,
    cast(TerritoryID as string) as territory_id,
    SalesQuota as sales_quota,
    Bonus as bonus,
    CommissionPct as commission_pct,
    SalesYTD as sales_ytd,
    SalesLastYear as sales_last_year,
    cast(rowguid as string) as rowguid,
    cast(cast(ModifiedDate as string) as date) as modified_date

from {{ source('raw', 'salesperson') }}