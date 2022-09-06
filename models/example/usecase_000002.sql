{{ config(materialized='table') }}

select Count(*) as total_all from VWE_S3.PUBLIC.SENTIMENT_ANALYSIS where SOURCE='Facebook'