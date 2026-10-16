USE ecommerce_db;

INSERT INTO Customers
(customer_name, email, city)
VALUES
('Rahul Sharma', 'rahul@gmail.com', 'Bhubaneswar'),
('Amit Kumar', 'amit@gmail.com', 'Cuttack'),
('Priya Das', 'priya@gmail.com', 'Brahmapur'),
('Sneha Patel', 'sneha@gmail.com', 'Delhi'),
('Rohan Singh', 'rohan@gmail.com', 'Pune');

INSERT INTO Products
(product_name, category, price, stock)
VALUES
('Laptop', 'Electronics', 55000.00, 10),
('Mobile', 'Electronics', 20000.00, 25),
('Headphones', 'Accessories', 1500.00, 40),
('Keyboard', 'Accessories', 1200.00, 30),
('Monitor', 'Electronics', 12000.00, 15);

INSERT INTO Orders
(customer_id, order_date, status)
VALUES
(1, '2026-10-01', 'Delivered'),
(2, '2026-10-02', 'Pending'),
(1, '2026-10-03', 'Shipped'),
(3, '2026-10-04', 'Delivered'),
(4, '2026-10-05', 'Cancelled');

INSERT INTO Order_Items
(order_id, product_id, quantity, price)
VALUES
(1, 1, 1, 55000.00),
(1, 3, 2, 1500.00),
(2, 2, 1, 20000.00),
(2, 4, 2, 1200.00),
(3, 2, 1, 20000.00),
(4, 5, 1, 12000.00),
(5, 1, 1, 55000.00);

INSERT INTO Payments
(order_id, amount, payment_method,
 payment_status, payment_date)
VALUES
(1, 58000.00, 'UPI', 'Paid', '2026-10-01'),
(2, 22400.00, 'Card', 'Pending', NULL),
(3, 20000.00, 'UPI', 'Paid', '2026-10-03'),
(4, 12000.00, 'Cash', 'Paid', '2026-10-04'),
(5, 55000.00, 'Card', 'Refunded', '2026-10-05');
