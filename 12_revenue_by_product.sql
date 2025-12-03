Select
p.product_name,
SUM (oi.quantity * oi.unit_price) AS revenue
From order_items oi
JOIN products p 
ON p.product_id = oi.product_id
GROUP BY p.product_name 
ORDER BY revenue DESC;