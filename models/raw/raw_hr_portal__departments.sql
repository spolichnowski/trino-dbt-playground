with 

final as (

    select * from {{ source('hr_portal', 'departments') }}

)

select * from final

{% if is_incremental() %}

    where department_id > (select max(department_id) from {{ this }})

{% endif %}