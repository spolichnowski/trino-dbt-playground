with 

departments as (
    
    select * from {{ ref("raw_hr_portal__departments") }}
    
),

final as (

    select 
        -- Primary keys
        department_id,

        -- Descriptive attributes
        department_name,
        manager_name,
        location,

        -- Metrics
        budget

    from departments

)

select * from final
