# E-Commerce Order Management System

## About the Project

The E-Commerce Order Management System is a MySQL-based database project designed to manage customers, products, orders, order items, and payments.

## Technologies Used

- MySQL
- SQL
- MySQL Workbench

## Database Tables

1. **Customers** — Stores customer details.
2. **Products** — Stores product names, categories, prices, and stock.
3. **Orders** — Stores customer orders and their statuses.
4. **Order_Items** — Stores products and quantities associated with each order.
5. **Payments** — Stores payment amounts, methods, and statuses.

## SQL Concepts Used

- CREATE TABLE and INSERT
- Primary Keys and Foreign Keys
- WHERE and ORDER BY
- INNER JOIN
- Aggregate Functions: SUM, COUNT, AVG
- GROUP BY and HAVING
- Subqueries
- Date Formatting
- Business Reports

## Key Features

- Customer order details
- Order value calculations
- Product-wise quantity reports
- Payment status summaries
- Monthly order reports
- Low-stock product reports

## How to Run

1. Install MySQL Server and MySQL Workbench.
2. Open `schema.sql` and execute it.
3. Open `sample_data.sql` and execute it once.
4. Open `queries.sql` and run the required queries.

**Note:** Run the sample data script only once on a fresh database to avoid duplicate records.

## Project Files

- `schema.sql` — Database and table definitions.
- `sample_data.sql` — Sample records.
- `queries.sql` — SQL queries and reports.
- `README.md` — Project documentation.

## Author

Jatin kumar Behera
