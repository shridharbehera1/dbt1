{{config( materialized='table')}}

with ORDER_NEW as(
    SELECT 
        CUSTOMER_NAME,
        CUSTOMER_ID,
        CUSTOMER_SOURCE
    from {{ source('PUBLIC', 'ORDER_NEW') }}

)
select * FROM ORDER_NEW
