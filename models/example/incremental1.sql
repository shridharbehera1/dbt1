{{
    config(
        materialized='incremental',unique_key ='Order_ID'
    )
}}
select
      Customer_ID,
      Order_ID,
      Customer_Name,
      Order_Date as date_day  

 from  VWE_S3.PUBLIC.demo
{% if is_incremental() %}
  -- this filter will only be applied on an incremental run
  where date_day >= (select max(date_day) from {{ this }})
{% endif %}