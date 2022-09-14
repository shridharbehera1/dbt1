select
  CUSTOMER_NAME,
  PRODUCT_NAME,
  PRICE,
  {{ divide_by_two('SALES') }} as sales_divided_by_two
from VWE_S3.PUBLIC.CORPORATE