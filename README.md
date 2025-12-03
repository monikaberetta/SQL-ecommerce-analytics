**E-Commerce SQL Analytics Project**



This project contains a relational e-commerce database built in PostgreSQL.



It simulates a small online store with:

\+ Customers

\+ Products

\+ Orders

\+ Order items

\+ Marketing campaigns



The project demonstrates practical SQL skills used in real Data Analyst / BI roles, including:



\+ Data filtering and cleaning

\+ JOIN operations

\+ Aggregations (SUM, COUNT, GROUP BY)

\+ Windowing logic

\+ Date and time calculations

\+ Business KPIs



The dataset and tables were created manually using SQL.



**Project Structure**



* Database Setup



00\_schema\_creation.sql - Database schema with all tables (customers, orders, products, marketing, order\_items).



00\_seed\_data.sql - Sample e-commerce data: customers, products, campaigns, and orders.



**Analytical SQL Queries**



* Basic queries



01\_list\_all\_customers.sql – list of all customers



02\_list\_all\_orders.sql – list of all orders with product details



03\_customers\_without\_orders.sql – customers with no transactions



04\_concat\_customer\_names.sql – merging first \& last name



* Filtering



05\_search\_customer\_by\_first\_name.sql



06\_search\_email\_partial.sql



07\_filter\_customers\_by\_age\_city.sql



08\_filter\_orders\_by\_amount\_range.sql



09\_search\_category\_excluding\_product.sql



10\_limit\_offset\_customers.sql – retrieve customers with LIMIT + OFFSET



* Aggregations



11\_customer\_count.sql – number of customers



12\_revenue\_by\_product.sql – revenue per product



13\_total\_revenue.sql – total revenue from completed orders



* Date \& Time Analysis



14\_return\_date\_and\_days\_difference.sql – return date, weekday name, and days difference



**How to Use This Project**



1. Create a PostgreSQL database (e.g., shop\_project)



2\. Run 00\_schema\_creation.sql



3\. Run 00\_seed\_data.sql



3\. Execute any query from the queries/ folder



