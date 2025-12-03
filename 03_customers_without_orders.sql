Select
c.first_name 
From customers c 
LEFT JOIN orders o
On c.customer_id = o.customer_id
Where o.order_id IS NULL