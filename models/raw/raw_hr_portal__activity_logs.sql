with 

final as (

    select * from {{ source('hr_portal', 'activity_logs') }}

)

select * from final
{% if is_incremental() %}

where event_timestamp > (select max(event_timestamp) from {{ this }} )

{% endif %}