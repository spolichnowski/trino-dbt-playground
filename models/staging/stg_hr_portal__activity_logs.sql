with 

activity_logs as (
    
    select * from {{ ref("raw_hr_portal__activity_logs") }}
    
),

final as (

    select 
    
        -- Primary keys
        log_id,
        
        -- Foreign keys
        employee_id,

        -- Descriptive attributes
        event_type,
        event_description,
        status as even_status,

        -- Timestamps
        event_timestamp

    from activity_logs

)

select * from final 
