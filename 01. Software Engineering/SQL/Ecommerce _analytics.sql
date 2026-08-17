DROP DATABASE IF EXISTS ecommerce_analytics;

CREATE DATABASE ecommerce_analytics;

USE ecommerce_analytics;


-- =========================================================
-- 1. CUSTOMERS
-- =========================================================

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(150),
    city VARCHAR(100),
    state VARCHAR(100),
    signup_date DATE,
    customer_segment VARCHAR(30)
);


-- =========================================================
-- 2. STORES
-- =========================================================

CREATE TABLE stores (
    store_id INT PRIMARY KEY,
    store_name VARCHAR(100),
    city VARCHAR(100),
    state VARCHAR(100)
);


-- =========================================================
-- 3. CATEGORIES
-- =========================================================

CREATE TABLE categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(100)
);


-- =========================================================
-- 4. PRODUCTS
-- =========================================================

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(150),
    category_id INT,
    price DECIMAL(10,2),

    FOREIGN KEY (category_id)
        REFERENCES categories(category_id)
);


-- =========================================================
-- 5. EMPLOYEES
-- =========================================================

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department VARCHAR(100),
    manager_id INT,
    salary DECIMAL(10,2),
    hire_date DATE,

    FOREIGN KEY (manager_id)
        REFERENCES employees(employee_id)
);


-- =========================================================
-- 6. ORDERS
-- =========================================================

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    store_id INT,
    order_date DATE,
    order_status VARCHAR(30),
    payment_method VARCHAR(30),

    FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id),

    FOREIGN KEY (store_id)
        REFERENCES stores(store_id)
);


-- =========================================================
-- 7. ORDER ITEMS
-- =========================================================

CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    unit_price DECIMAL(10,2),

    FOREIGN KEY (order_id)
        REFERENCES orders(order_id),

    FOREIGN KEY (product_id)
        REFERENCES products(product_id)
);


-- =========================================================
-- INSERT CUSTOMERS
-- =========================================================

INSERT INTO customers VALUES
(1, 'Rahul Sharma', 'rahul@gmail.com', 'Hyderabad', 'Telangana', '2024-01-15', 'Premium'),
(2, 'Priya Reddy', 'priya@gmail.com', 'Vijayawada', 'Andhra Pradesh', '2024-02-10', 'Regular'),
(3, 'Arjun Kumar', 'arjun@gmail.com', 'Bangalore', 'Karnataka', '2024-02-18', 'Premium'),
(4, 'Sneha Rao', 'sneha@gmail.com', 'Chennai', 'Tamil Nadu', '2024-03-05', 'Regular'),
(5, 'Kiran Patel', 'kiran@gmail.com', 'Mumbai', 'Maharashtra', '2024-03-12', 'Premium'),
(6, 'Ananya Singh', 'ananya@gmail.com', 'Delhi', 'Delhi', '2024-03-20', 'Regular'),
(7, 'Vikram Reddy', 'vikram@gmail.com', 'Hyderabad', 'Telangana', '2024-04-01', 'Regular'),
(8, 'Neha Kapoor', 'neha@gmail.com', 'Pune', 'Maharashtra', '2024-04-15', 'Premium'),
(9, 'Rohit Verma', 'rohit@gmail.com', 'Bangalore', 'Karnataka', '2024-05-01', 'Regular'),
(10, 'Meena Joshi', 'meena@gmail.com', 'Mumbai', 'Maharashtra', '2024-05-10', 'Regular');


-- =========================================================
-- INSERT STORES
-- =========================================================

INSERT INTO stores VALUES
(1, 'Hyderabad Central', 'Hyderabad', 'Telangana'),
(2, 'Vijayawada Central', 'Vijayawada', 'Andhra Pradesh'),
(3, 'Bangalore Central', 'Bangalore', 'Karnataka'),
(4, 'Mumbai Central', 'Mumbai', 'Maharashtra'),
(5, 'Delhi Central', 'Delhi', 'Delhi');


-- =========================================================
-- INSERT CATEGORIES
-- =========================================================

INSERT INTO categories VALUES
(1, 'Electronics'),
(2, 'Mobiles'),
(3, 'Laptops'),
(4, 'Accessories'),
(5, 'Home Appliances');


-- =========================================================
-- INSERT PRODUCTS
-- =========================================================

INSERT INTO products VALUES
(1, 'iPhone 15', 2, 70000),
(2, 'Samsung Galaxy S24', 2, 65000),
(3, 'OnePlus 12', 2, 55000),
(4, 'MacBook Air M3', 3, 110000),
(5, 'Dell XPS 13', 3, 95000),
(6, 'HP Pavilion', 3, 75000),
(7, 'Sony Headphones', 4, 12000),
(8, 'Apple AirPods', 4, 18000),
(9, 'Logitech Mouse', 4, 2500),
(10, 'Samsung TV', 5, 60000),
(11, 'LG Refrigerator', 5, 55000),
(12, 'Dyson Vacuum', 5, 45000);


-- =========================================================
-- INSERT EMPLOYEES
-- =========================================================

INSERT INTO employees VALUES
(1, 'Ramesh Kumar', 'Management', NULL, 150000, '2018-01-10');

INSERT INTO employees VALUES
(2, 'Suresh Rao', 'Sales', 1, 90000, '2019-03-15'),
(3, 'Priya Sharma', 'Sales', 1, 85000, '2020-06-20'),
(4, 'Arun Reddy', 'Sales', 1, 80000, '2021-02-10'),
(5, 'Divya Singh', 'IT', 1, 95000, '2019-09-12'),
(6, 'Karthik Rao', 'IT', 1, 88000, '2020-11-25'),
(7, 'Megha Patel', 'HR', 1, 75000, '2021-05-18'),
(8, 'Vijay Kumar', 'HR', 1, 72000, '2022-01-15'),
(9, 'Rahul Verma', 'Finance', 1, 100000, '2019-08-05'),
(10, 'Sneha Kapoor', 'Finance', 1, 92000, '2022-03-10');


-- =========================================================
-- INSERT ORDERS
-- =========================================================

INSERT INTO orders VALUES
(1001, 1, 1, '2024-06-01', 'Completed', 'Credit Card'),
(1002, 2, 2, '2024-06-02', 'Completed', 'UPI'),
(1003, 3, 3, '2024-06-03', 'Completed', 'Credit Card'),
(1004, 4, 1, '2024-06-04', 'Completed', 'Debit Card'),
(1005, 5, 4, '2024-06-05', 'Completed', 'Credit Card'),
(1006, 1, 1, '2024-06-07', 'Completed', 'UPI'),
(1007, 6, 5, '2024-06-08', 'Completed', 'Credit Card'),
(1008, 7, 1, '2024-06-10', 'Cancelled', 'UPI'),
(1009, 8, 4, '2024-06-11', 'Completed', 'Credit Card'),
(1010, 9, 3, '2024-06-12', 'Completed', 'UPI'),
(1011, 10, 4, '2024-06-14', 'Completed', 'Debit Card'),
(1012, 2, 2, '2024-06-15', 'Completed', 'UPI'),
(1013, 3, 3, '2024-06-17', 'Completed', 'Credit Card'),
(1014, 5, 4, '2024-06-18', 'Completed', 'Credit Card'),
(1015, 1, 1, '2024-06-20', 'Completed', 'Credit Card'),
(1016, 6, 5, '2024-06-21', 'Completed', 'UPI'),
(1017, 8, 4, '2024-06-22', 'Completed', 'Credit Card'),
(1018, 9, 3, '2024-06-24', 'Completed', 'UPI'),
(1019, 10, 4, '2024-06-25', 'Completed', 'Debit Card'),
(1020, 4, 1, '2024-06-27', 'Completed', 'Credit Card');


-- =========================================================
-- INSERT ORDER ITEMS
-- =========================================================

INSERT INTO order_items VALUES
(1, 1001, 1, 1, 70000),
(2, 1001, 8, 1, 18000),

(3, 1002, 3, 1, 55000),

(4, 1003, 4, 1, 110000),
(5, 1003, 7, 2, 12000),

(6, 1004, 9, 2, 2500),

(7, 1005, 10, 1, 60000),
(8, 1005, 8, 1, 18000),

(9, 1006, 2, 1, 65000),

(10, 1007, 11, 1, 55000),

(11, 1008, 5, 1, 95000),

(12, 1009, 12, 1, 45000),
(13, 1009, 7, 1, 12000),

(14, 1010, 6, 1, 75000),

(15, 1011, 10, 1, 60000),

(16, 1012, 3, 1, 55000),
(17, 1012, 9, 1, 2500),

(18, 1013, 4, 1, 110000),

(19, 1014, 11, 1, 55000),
(20, 1014, 8, 1, 18000),

(21, 1015, 1, 1, 70000),
(22, 1015, 7, 1, 12000),

(23, 1016, 11, 1, 55000),

(24, 1017, 12, 1, 45000),

(25, 1018, 5, 1, 95000),

(26, 1019, 10, 1, 60000),
(27, 1019, 9, 2, 2500),

(28, 1020, 2, 1, 65000),
(29, 1020, 8, 1, 18000);