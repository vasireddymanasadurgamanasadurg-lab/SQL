create database ASS;
use ASS;
CREATE TABLE e_commerce_orders (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    product_name VARCHAR(100),
    quantity INT,
    price DECIMAL(10, 2),
    total_amount DECIMAL(10, 2),
    order_date DATE
);

INSERT INTO e_commerce_orders (order_id, customer_name, product_name, quantity, price, total_amount, order_date)
VALUES
(1, 'Ravi Kumar', 'Smartphone', 1, 699.99, 699.99, '2025-10-01'),
(2, 'Amit Sharma', 'Laptop', 1, 999.99, 999.99, '2025-10-02'),
(3, 'Raj Patel', 'Headphones', 2, 49.99, 99.98, '2025-10-03'),
(4, 'Neha Gupta', 'Smartwatch', 1, 199.99, 199.99, '2025-10-04'),
(5, 'Priya Mehta', 'Tablet', 1, 329.99, 329.99, '2025-10-05'),
(6, 'Vikram Singh', 'Keyboard', 1, 89.99, 89.99, '2025-10-06'),
(7, 'Sonia Reddy', 'Mouse', 2, 19.99, 39.98, '2025-10-07'),
(8, 'Ravi Sharma', 'Monitor', 1, 249.99, 249.99, '2025-10-08'),
(9, 'Ananya Iyer', 'Phone Case', 3, 15.99, 47.97, '2025-10-09'),
(10, 'Karan Joshi', 'Smartphone', 2, 699.99, 1399.98, '2025-10-10'),
(11, 'Maya Desai', 'Gaming Console', 1, 399.99, 399.99, '2025-10-11'),
(12, 'Rohit Kapoor', 'Speakers', 2, 79.99, 159.98, '2025-10-12'),
(13, 'Simran Chawla', 'Laptop', 1, 849.99, 849.99, '2025-10-13'),
(14, 'Amitabh Reddy', 'Smartwatch', 1, 199.99, 199.99, '2025-10-14'),
(15, 'Tanya Gupta', 'Smartphone', 1, 799.99, 799.99, '2025-10-15'),
(16, 'Harish Kaur', 'Tablet', 1, 299.99, 299.99, '2025-10-16'),
(17, 'Deepak Singh', 'Keyboard', 2, 69.99, 139.98, '2025-10-17'),
(18, 'Neelam Verma', 'Headphones', 1, 89.99, 89.99, '2025-10-18'),
(19, 'Kunal Joshi', 'Gaming Console', 1, 499.99, 499.99, '2025-10-19'),
(20, 'Pooja Shah', 'Monitor', 1, 199.99, 199.99, '2025-10-20');


SELECT * FROM e_commerce_orders;

-- 1.Display all orders where the price is greater than 500.
SELECT * 
FROM e_commerce_orders
WHERE price > 500;

-- 2.Retrieve all orders placed by the customer 'Ravi Kumar'.
SELECT * 
FROM e_commerce_orders
WHERE customer_name = 'Ravi Kumar';

-- 3. Show all orders for the product 'Laptop'
SELECT * 
FROM e_commerce_orders
WHERE product_name = 'Laptop';

-- 4.List all orders placed between '2025-10-05' and '2025-10-15'
SELECT * 
FROM e_commerce_orders
WHERE order_date BETWEEN '2025-10-05' AND '2025-10-15';

-- 5. Find all distinct product names
SELECT DISTINCT product_name 
FROM e_commerce_orders;

-- 6. Display all unique customer names who bought a 'Smartphone'
SELECT DISTINCT customer_name 
FROM e_commerce_orders
WHERE product_name = 'Smartphone';

-- 7. Show all orders sorted by order_date (ascending)
SELECT * 
FROM e_commerce_orders
ORDER BY order_date ASC;


-- 8. Display all orders sorted by total_amount (descending)
SELECT * 
FROM e_commerce_orders
ORDER BY total_amount DESC;


-- 9. Retrieve the first 5 orders using LIMIT
SELECT * 
FROM e_commerce_orders
LIMIT 5;


-- 10. Display the last 3 orders when sorted by order_date
SELECT * 
FROM e_commerce_orders
ORDER BY order_date DESC
LIMIT 3;


-- 11. Find all orders where the customer name starts with 'R'
SELECT * 
FROM e_commerce_orders
WHERE customer_name LIKE 'R%';


-- 12. Show all products where the price is between 100 and 500
SELECT * 
FROM e_commerce_orders
WHERE price BETWEEN 100 AND 500;


-- 13. List all orders where the quantity is more than 1
SELECT * 
FROM e_commerce_orders
WHERE quantity > 1;


-- 14. Display all orders where the product is not 'Smartphone'
SELECT * 
FROM e_commerce_orders
WHERE product_name <> 'Smartphone';

-- 15.Show all distinct customers who ordered on '2025-10-10'.
SELECT DISTINCT customer_name
FROM e_commerce_orders
WHERE order_date = '2025-10-10';

