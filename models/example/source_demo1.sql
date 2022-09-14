{{config( materialized='table')}}


select
  CUSTOMER_NAME,
  CUSTOMER_ID 
from {{ source('PUBLIC', 'ORDER_TABLE') }}