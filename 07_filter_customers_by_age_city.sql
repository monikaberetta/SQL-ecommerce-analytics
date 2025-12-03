SELECT
*
FROM customers c 
WHERE c.age >= 30 AND c.city LIKE 'W%' OR c.city LIKE 'K%'