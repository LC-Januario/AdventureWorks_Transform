-- models/Silver/svr_raw__customer.sql

with person as (
    select * from {{ ref('brz_raw__person') }}
), customer as (
    select * from {{ ref('brz_raw__customer') }}
)

select
    -- Person info
    p.business_entity_id,
    p.person_type,
    p.name_style,
    p.title,
    p.first_name,
    p.middle_name,
    p.last_name,
    p.suffix,
    p.email_promotion,
    p.additional_contact_info,
    p.demographics,
    p.rowguid as person_rowguid,
    p.modified_date as person_modified_date,

    -- Customer info
    c.customer_id,
    c.store_id,
    c.territory_id,
    c.modified_date as customer_modified_date

from person as p
left join customer as c
    on p.business_entity_id = c.person_id