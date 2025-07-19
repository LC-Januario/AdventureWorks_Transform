-- models/Bronze/brz_raw__product_category.sql
select
    cast(ProductCategoryID as string) as product_category_id,
    cast(Name as string) as name,
    cast(rowguid as string) as rowguid,
    cast(cast(ModifiedDate as string) as date) as modified_date

from {{ source('raw', 'product_category') }}