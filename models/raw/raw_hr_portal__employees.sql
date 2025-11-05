with 

final as (

    select * from {{ source('hr_portal', 'employees') }}

)

select * from final

{% if is_incremental() %}

where employee_id > (select max(employee_id) from {{ this }})

{% endif %}
