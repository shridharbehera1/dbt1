{{ config(materialized='table') }}

select SOURCE,Count(SOURCE) as total_source  from VWE_S3.PUBLIC.SENTIMENT_ANALYSIS
Group by (SOURCE)