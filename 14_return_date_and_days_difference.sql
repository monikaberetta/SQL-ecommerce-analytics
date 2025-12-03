Select 
  payment_method
, total_amount  
,  order_date
, (order_date + INTERVAL '3 DAYS') AS return_date
, TO_CHAR(order_date, 'Day') AS weekday_name
, (order_date + INTERVAL '3 DAYS') - order_date AS days_difference 
From public.orders
