-- models/Gold/dim_Product.sql
with stg_product as (
    select * from {{ ref('svr_raw__product') }}
)

select *
from stg_product