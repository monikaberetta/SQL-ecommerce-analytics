SELECT SUM(total_amount) AS suma_przychodu
FROM orders
WHERE status = 'completed';