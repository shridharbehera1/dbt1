{{
  config(
    post_hook=[
      "CREATE OR REPLACE TABLE TRANSFORMATION.PUBLIC.usecase_5 AS
       select * from  VWE_S3.PUBLIC.PREMIUM_CUSTOMER ",

       "alter table TRANSFORMATION.PUBLIC.usecase_5 add CATEGORY varchar(90)",
 
      "update TRANSFORMATION.PUBLIC.usecase_5
       set CATEGORY='Gold'
       where TENURE_IN_MONTHS<=69",
 
      "update TRANSFORMATION.PUBLIC.usecase_5
       set CATEGORY='Sliver'
       where TENURE_IN_MONTHS<=38",
 
       "update TRANSFORMATION.PUBLIC.usecase_5 
       set CATEGORY='Bronze'
       where TENURE_IN_MONTHS<=15"
    ],
)
}}

select * from VWE_S3.PUBLIC.PREMIUM_CUSTOMER