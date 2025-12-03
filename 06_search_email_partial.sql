SELECT
*
FROM customers c 
WHERE c.email LIKE 'anna%' 
OR  c.email LIKE '%now%'
OR c.email LIKE '_____.zielinska@example.com'