-- This script demonstrates how the tables are created

-- Customers Table
CREATE TABLE de_project_01.kasi_mart.customers (
customer_id VARCHAR(50),
customer_name VARCHAR(100),
email VARCHAR(100),
province VARCHAR(100),
signup_date DATE
);

-- Products Table
CREATE TABLE de_project_01.kasi_mart.products (
product_id VARCHAR(50),
product_name VARCHAR(100),
category VARCHAR(100),
unit_price DECIMAL(10,2)
);

-- Orders Table
CREATE TABLE de_project_01.kasi_mart.orders (
order_id VARCHAR(50),
customer_id VARCHAR(50),
product_id VARCHAR(50),
order_date DATE,
quantity INT
);