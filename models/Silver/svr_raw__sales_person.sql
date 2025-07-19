-- models/Silver/svr_raw__sales_person.sql

with person as (
    select * from {{ ref('brz_raw__person') }}
), employee as (
    select * from {{ ref('brz_raw__employee') }}
), sales_person as (
    select * from {{ ref('brz_raw__sales_person') }}
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

    -- Employee info
    e.national_id_number,
    e.login_id,
    e.organization_node,
    e.organization_level,
    e.job_title,
    e.birth_date,
    e.marital_status,
    e.gender,
    e.hire_date,
    e.salaried_flag,
    e.vacation_hours,
    e.sick_leave_hours,
    e.current_flag,
    e.rowguid as employee_rowguid,
    e.modified_date as employee_modified_date,

    -- Sales Person info
    sp.territory_id,
    sp.sales_quota,
    sp.bonus,
    sp.commission_pct,
    sp.sales_ytd,
    sp.sales_last_year,
    sp.rowguid as sales_rowguid,
    sp.modified_date as sales_modified_date

from person as p
left join employee as e
    on p.business_entity_id = e.business_entity_id
left join sales_person as sp
    on p.business_entity_id = sp.business_entity_id