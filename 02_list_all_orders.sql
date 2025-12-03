SELECT 
    c.first_name,
    o.order_id,
    o.total_amount,
    p.product_name
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN order_items oi
    ON o.order_id = oi.order_id
JOIN products p
    ON oi.product_id = p.product_id;
