-- models/Bronze/brz_raw__country_region.sql
select
    CountryRegionCode as country_region_code,
    cast(Name as string) as name,
    cast(cast(ModifiedDate as string) as date) as modified_date

from {{ source('raw', 'country_region') }}