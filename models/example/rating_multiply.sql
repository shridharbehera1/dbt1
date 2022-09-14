select
  CUSTOMER_NAME,
  CUSTOMER_ID,
  STATUS,
  {{ multiply_by_ten('RATING') }} as rating_multiply_by_ten
from VWE_S3.PUBLIC.REVIEWS