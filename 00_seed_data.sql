-- KLIENCI
INSERT INTO customers (first_name, last_name, email, registration_date, country, city, age)
VALUES
('Anna', 'Kowalska', 'anna.kowalska@example.com', '2024-01-10', 'Poland', 'Warsaw', 28),
('Piotr', 'Nowak', 'piotr.nowak@example.com', '2024-02-05', 'Poland', 'Krakow', 35),
('Marta', 'Zielińska', 'marta.zielinska@example.com', '2024-03-12', 'Germany', 'Berlin', 31);

-- PRODUKTY
INSERT INTO products (product_name, category, price, is_active)
VALUES
('Laptop 14"', 'Electronics', 3500.00, TRUE),
('Mysz bezprzewodowa', 'Electronics', 80.00, TRUE),
('Kubek ceramiczny', 'Home', 40.00, TRUE);

-- MARKETING
INSERT INTO marketing_campaigns (campaign_name, channel, start_date, end_date, budget)
VALUES
('Winter Sale', 'Facebook', '2024-01-01', '2024-01-31', 5000),
('Spring Promo', 'Google Ads', '2024-03-01', '2024-03-31', 7000);

-- RELACJA MARKETING I KLIENCI
INSERT INTO customer_campaigns (customer_id, campaign_id)
VALUES
(1, 1),  -- Anna -> Winter Sale
(2, 1),  -- Piotr -> Winter Sale
(3, 2);  -- Marta -> Spring Promo

-- ZAMÓWIENIA
INSERT INTO orders (customer_id, order_date, status, payment_method, total_amount)
VALUES
(1, '2024-01-15 10:30', 'completed', 'card', 3580.00),
(2, '2024-01-20 18:45', 'completed', 'paypal', 80.00),
(3, '2024-03-15 12:10', 'completed', 'transfer', 3540.00);

-- POZYCJE ZAMÓWIEŃ
INSERT INTO order_items (order_id, product_id, quantity, unit_price)
VALUES
(1, 1, 1, 3500.00),  -- Anna: 1x Laptop
(1, 2, 1, 80.00),    -- Anna: 1x Mysz bezprzewodowa
(2, 2, 1, 80.00),    -- Piotr: 1x Mysz bezprzewodowa
(3, 1, 1, 3500.00),  -- Marta: 1x Laptop
(3, 3, 1, 40.00);    -- Marta: 1x Kubek ceramiczny
