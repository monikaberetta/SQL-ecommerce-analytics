SELECT 
customer_id,
first_name,
country,
age
FROM customers 
ORDER BY age ASC
LIMIT 3 OFFSET 1;