select
      Customer_ID,
      Order_ID,
      Customer_Name,
      Order_Date as date_day  

 from  {{ source('PUBLIC', 'demo') }}
