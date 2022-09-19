{{config( materialized='table')}}

with mock_order as(
    SELECT 
        order_id,
        status,
        created_at,
        updated_at
    from {{ source('PUBLIC', 'mock_order') }}

)
select * FROM mock_order

        