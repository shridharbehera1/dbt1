{{ config(materialized='table') }}

select * from VWE_S3.PUBLIC.CONVERTED_USER
where SUBSCRIPTION='Yes'