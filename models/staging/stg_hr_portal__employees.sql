with 

employees as (
    
    select * from {{ ref("raw_hr_portal__employees") }}
    
),

final as (

    select 
        -- Primary keys
        employee_id,

        -- Descriptive attributes
        first_name,
        last_name,
        department,
        address,

        -- Timestamps
        hire_date

    from employees
)

select * from final
