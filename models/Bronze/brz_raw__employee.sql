-- models/Bronze/brz_raw__employee.sql
select
    cast(BusinessEntityID as string) as business_entity_id,
    cast(NationalIDNumber as string) as national_id_number,
    cast(LoginID as string) as login_id,
    cast(OrganizationNode as string) as organization_node,
    cast(OrganizationLevel as string) as organization_level,
    cast(JobTitle as string) as job_title,
    cast(cast(BirthDate as string) as date) as birth_date,
    cast(MaritalStatus as string) as marital_status,
    cast(Gender as string) as gender,
    cast(cast(HireDate as string) as date) as hire_date,
    cast(SalariedFlag as string) as salaried_flag,
    VacationHours as vacation_hours,
    SickLeaveHours as sick_leave_hours,
    cast(CurrentFlag as string) as current_flag,
    cast(rowguid as string) as rowguid,
    cast(cast(ModifiedDate as string) as date) as modified_date

from {{ source('raw', 'employee') }}