with
    source as (select * from {{ source("salesforce", "opportunities") }}),

    renamed as (

        select

            batchid,
            oppurtunityid as opportunityid,
            companextid as accountid,
            amount,
            project_name,
            oppurtunity_name as opportunity_name,
            stage,
            close_date,
            datecreated,
            modifieddate

        from source

    )

select *
from renamed
