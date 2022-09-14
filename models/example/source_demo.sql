{{config( materialized='table')}}

select *
from {{ source('PUBLIC', 'ORDER_NEW') }}