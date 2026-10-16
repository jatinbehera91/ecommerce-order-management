USE ecommerce_db;

-- 1. Show all customers
SELECT * FROM Customers;

-- 2. Show all products
SELECT * FROM Products;

-- 3. Customer order details
SELECT
    c.customer_name,
    o.order_id,
    o.order_date,
    o.status
FROM Customers c
INNER JOIN Orders o
    ON c.customer_id = o.customer_id;

-- 4. Total value of each order
SELECT
    order_id,
    SUM(quantity * price) AS total_order_value
FROM Order_Items
GROUP BY order_id;

-- 5. Product-wise quantity sold
SELECT
    p.product_name,
    SUM(oi.quantity) AS total_sold
FROM Products p
INNER JOIN Order_Items oi
    ON p.product_id = oi.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_sold DESC;

-- 6. Payment status report
SELECT
    payment_status,
    COUNT(*) AS total_payments,
    SUM(amount) AS total_amount
FROM Payments
GROUP BY payment_status;

-- 7. Products priced above average
SELECT product_name, price
FROM Products
WHERE price > (
    SELECT AVG(price)
    FROM Products
);

-- 8. Low stock products
SELECT product_name, stock, price
FROM Products
WHERE stock <= 15
ORDER BY stock ASC;
