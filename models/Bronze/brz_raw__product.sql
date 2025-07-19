-- models/Bronze/brz_raw__product.sql
select
    cast(ProductID as string) as product_id,
    cast(Name as string) as name,
    cast(ProductNumber as string) as product_number,
    cast(MakeFlag as string) as make_flag,
    cast(FinishedGoodsFlag as string) as finished_goods_flag,
    cast(Color as string) as color,
    cast(SafetyStockLevel as string) as safety_stock_level,
    ReorderPoint as reorder_point,
    StandardCost as standard_cost,
    ListPrice as list_price,
    cast(SizeUnitMeasureCode as string) as size_unit_measure_code,
    cast(WeightUnitMeasureCode as string) as weight_unit_measure_code,
    Weight as weight,
    DaysToManufacture as days_to_manufacture,
    cast(ProductLine as string) as product_line,
    cast(Class as string) as class,
    cast(Style as string) as style,
    cast(ProductSubcategoryID as string) as product_subcategory_id,
    cast(ProductModelID as string) as product_model_id

from {{ source('raw', 'product') }}