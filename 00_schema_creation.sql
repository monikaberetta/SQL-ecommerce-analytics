-- KLIENCI
CREATE TABLE customers (
    customer_id      SERIAL PRIMARY KEY,
    first_name       VARCHAR(50),
    last_name        VARCHAR(50),
    email            VARCHAR(100) UNIQUE,
    registration_date DATE,
    country          VARCHAR(50),
    city             VARCHAR(50),
    age              INT
);

-- PRODUKTY
CREATE TABLE products (
    product_id   SERIAL PRIMARY KEY,
    product_name VARCHAR(100),
    category     VARCHAR(50),
    price        NUMERIC(10,2),
    is_active    BOOLEAN DEFAULT TRUE
);

-- ZAMÓWIENIA
CREATE TABLE orders (
    order_id        SERIAL PRIMARY KEY,
    customer_id     INT REFERENCES customers(customer_id),
    order_date      TIMESTAMP,
    status          VARCHAR(20),      -- 'completed', 'cancelled', 'returned'
    payment_method  VARCHAR(30),      -- 'card', 'paypal', 'transfer'
    total_amount    NUMERIC(10,2)
);

-- POZYCJE ZAMÓWIEŃ
CREATE TABLE order_items (
    order_item_id SERIAL PRIMARY KEY,
    order_id      INT REFERENCES orders(order_id),
    product_id    INT REFERENCES products(product_id),
    quantity      INT,
    unit_price    NUMERIC(10,2)
);

-- MARKETING
CREATE TABLE marketing_campaigns (
    campaign_id    SERIAL PRIMARY KEY,
    campaign_name  VARCHAR(100),
    channel        VARCHAR(50),      -- 'Facebook', 'Google', 'Email'
    start_date     DATE,
    end_date       DATE,
    budget         NUMERIC(12,2)
);

-- RELACJA MARKETING I KLIENCI
CREATE TABLE customer_campaigns (
    customer_id INT REFERENCES customers(customer_id),
    campaign_id INT REFERENCES marketing_campaigns(campaign_id),
    PRIMARY KEY (customer_id, campaign_id)
);
