-- models/Bronze/brz_raw__person.sql
select
    cast(BusinessEntityID as string) as business_entity_id,
    cast(PersonType as string) as person_type,
    cast(NameStyle as string) as name_style,
    cast(Title as string) as title,
    cast(FirstName as string) as first_name,
    cast(MiddleName as string) as middle_name,
    cast(LastName as string) as last_name,
    cast(Suffix as string) as suffix,
    cast(EmailPromotion as string) as email_promotion,
    cast(AdditionalContactInfo as string) as additional_contact_info,
    cast(Demographics as string) as demographics,
    cast(rowguid as string) as rowguid,
    cast(cast(ModifiedDate as string) as date) as modified_date

from {{ source('raw', 'person') }}