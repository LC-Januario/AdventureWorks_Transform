-- models/Silver/svr_raw__sales_territory.sql

with sales_territory as (
    select * from {{ ref('brz_raw__sales_territory') }}
), country_region as (
    select * from {{ ref('brz_raw__country_region') }}
)

select
    -- Sales Territory info
    st.territory_id,
    st.name as territory_name,
    st.country_region_code,
    st.sales_ytd,
    st.sales_last_year,
    st.cost_ytd,
    st.cost_last_year,
    st.rowguid,
    st.modified_date as territory_modified_date,

    -- Country Region info
    cr.name as country_name,
    cr.modified_date as country_modified_date

from sales_territory as st
left join country_region as cr
    on st.country_region_code = cr.country_region_code