{{ config(materialized='table') }}

select Sum(SALES_AMOUNT) as total_sales,sum(QUANTITY) as total_quantity from VWE_S3.PUBLIC.WHOLESALE2
GROUP BY (CUSTOMER_NAME)