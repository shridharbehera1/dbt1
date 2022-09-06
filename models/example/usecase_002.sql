{{ config(materialized='table') }}

select CHANNEL,Count(CLICKS) as total_clicks,Count(IMPRESSIONS) as total_impression from  VWE_S3.PUBLIC.MULTI_ATTRIBUTE
Group by (CHANNEL)