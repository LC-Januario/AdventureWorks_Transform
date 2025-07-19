-- models/Bronze/brz_raw__customer.sql
select
    cast(customerid as string) as customer_id,
    cast(personid as string) as person_id,
    cast(storeid as string) as store_id,
    cast(territoryid as string) as territory_id,
    cast(cast(ModifiedDate as string) as date) as modified_date
   
    
from {{ source('raw', 'customer') }}