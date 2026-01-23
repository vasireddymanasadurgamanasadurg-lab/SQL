-- practice group by,having,distinct ,aggregate functions 

SELECT DISTINCT product_name FROM e_commerce_orders; 

-- Aggregate Functions (Basics)  
-- Total number of orders

 SELECT COUNT(*) AS total_orders FROM e_commerce_orders; 

-- Total revenue 
SELECT SUM(total_amount) AS total_revenue FROM e_commerce_orders; 

-- Average order value 
SELECT AVG(total_amount) AS avg_order_value FROM e_commerce_orders; 

-- Maximum & Minimum order amount
 SELECT MAX(total_amount) AS highest_order, MIN(total_amount) AS lowest_order FROM e_commerce_orders; 

 -- GROUP BY
 -- Total revenue per product
 SELECT product_name, SUM(total_amount) AS total_sales FROM e_commerce_orders GROUP BY product_name; 
 
 -- Number of orders per customer
 SELECT customer_name, COUNT(*) AS order_count FROM e_commerce_orders GROUP BY customer_name; 
 
 -- HAVING 
 -- Products with totalsales greater than 1000
 SELECT product_name, SUM(total_amount) AS total_sales FROM e_commerce_orders GROUP BY product_name HAVING SUM(total_amount) > 1000; 
 
 -- Customers who placed more than 1 order 
 SELECT customer_name, COUNT(*) AS order_count FROM e_commerce_orders GROUP BY customer_name HAVING COUNT(*) > 1;