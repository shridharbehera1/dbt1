{{
  config(
    post_hook=[
       
        "CREATE OR REPLACE TABLE TRANSFORMATION.PUBLIC.Transform_join_REVIEW AS
        SELECT A.CUSTOMER_ID,A.CUSTOMER_NAME,A.STATUS,A.RATING,A.REMARKS_BY_UNHAPPY_CUSTOMERS AS REMARKS FROM VWE_S3.PUBLIC.REVIEW_NEW as A
        INNER JOIN VWE_S3.PUBLIC.REVIEWS as B ON A.CUSTOMER_ID = B.CUSTOMER_ID",

        "update TRANSFORMATION.PUBLIC.Transform_join_REVIEW set REMARKS=' Smell is good' where STATUS='Happy' and RATING=1",
        
        "update TRANSFORMATION.PUBLIC.Transform_join_REVIEW set REMARKS='Taste is good' where STATUS='Happy' and RATING=2",

        "update TRANSFORMATION.PUBLIC.Transform_join_REVIEW set REMARKS=' Safe On Time delivery' where STATUS='Happy' and RATING=3",
        
        "update TRANSFORMATION.PUBLIC.Transform_join_REVIEW set REMARKS='Product quality is good' where STATUS='Happy' and RATING=4",

        "update TRANSFORMATION.PUBLIC.Transform_join_REVIEW set REMARKS='taste is very good' where STATUS='Happy' and RATING=5",

        "update TRANSFORMATION.PUBLIC.Transform_join_REVIEW set REMARKS='Poor quality,bad packaging ' where STATUS='Unhappy' and RATING=1",

        "update TRANSFORMATION.PUBLIC.Transform_join_REVIEW set REMARKS='Received damaged product' where STATUS='Unhappy' and RATING=2",

        "update TRANSFORMATION.PUBLIC.Transform_join_REVIEW set REMARKS='Same product not received' where STATUS='Unhappy' and RATING=3",

        "update TRANSFORMATION.PUBLIC.Transform_join_REVIEW set REMARKS='Bad packaging' where STATUS='Unhappy' and RATING=4",

        "update TRANSFORMATION.PUBLIC.Transform_join_REVIEW set REMARKS='Late delivery' where STATUS='Unhappy' and RATING=5"
    ],
)
}}
SELECT * FROM VWE_S3.PUBLIC.REVIEW_NEW
