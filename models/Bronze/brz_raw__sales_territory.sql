-- models/Bronze/brz_raw__sales_territory.sql
select
    cast(TerritoryID as string) as territory_id,
    cast(Name as string) as name,
    CountryRegionCode as country_region_code,
    SalesYTD as sales_ytd,
    SalesLastYear as sales_last_year,
    CostYTD as cost_ytd,
    CostLastYear as cost_last_year,
    cast(rowguid as string) as rowguid,
    cast(cast(ModifiedDate as string) as date) as modified_date

from {{ source('raw', 'salesterritory') }}