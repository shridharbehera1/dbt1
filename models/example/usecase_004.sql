{{ config(materialized='table') }}

 select INSERTION_ORDER,Count(TOTAL_CONVERSIONS) as total_count from VWE_S3.PUBLIC.MULTI_ATTRIBUTE where YEAR=2021
group by (INSERTION_ORDER)