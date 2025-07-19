-- models/Silver/svr_raw__product.sql

with product as (
    select * from {{ ref('brz_raw__product') }}
), product_subcategory as (
    select * from {{ ref('brz_raw__product_subcategory') }}
), product_category as (
    select * from {{ ref('brz_raw__product_category') }}
)

select
    -- Product info
    p.product_id,
    p.name as product_name,
    p.product_number,
    p.make_flag,
    p.finished_goods_flag,
    p.color,
    p.safety_stock_level,
    p.reorder_point,
    p.standard_cost,
    p.list_price,
    p.size_unit_measure_code,
    p.weight_unit_measure_code,
    p.weight,
    p.days_to_manufacture,
    p.product_line,
    p.class,
    p.style,
    p.product_subcategory_id, -- Keep this one
    p.product_model_id,

    -- Subcategory info
    -- ps.product_subcategory_id, -- REMOVE THIS LINE (it's a duplicate)
    ps.product_category_id, -- Keep this one
    ps.name as subcategory_name,
    ps.rowguid as subcategory_rowguid,
    ps.modified_date as subcategory_modified_date,

    -- Category info
    -- pc.product_category_id, -- REMOVE THIS LINE (it's a duplicate)
    pc.name as category_name,
    pc.rowguid as category_rowguid,
    pc.modified_date as category_modified_date

from product as p
left join product_subcategory as ps
    on p.product_subcategory_id = ps.product_subcategory_id
left join product_category as pc
    on ps.product_category_id = pc.product_category_id