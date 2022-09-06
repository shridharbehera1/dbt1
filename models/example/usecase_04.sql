{{ config(materialized='table') }}

select EVENTS,Count(CONVERSION_STATUS) as total_conversion from VWE_S3.PUBLIC.LATEST_CONVERSION
where EVENT_YEAR=2021
group by (EVENTS)