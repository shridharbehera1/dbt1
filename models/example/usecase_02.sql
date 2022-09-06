{{ config(materialized='table') }}

select CAMPAIGN_TYPE,Count(CLICKS)  as total_clicks,Count(IMPRESSIONS)  as total_impression from VWE_S3.PUBLIC.MULTI_ATTRIBUTE
Group by(CAMPAIGN_TYPE)
