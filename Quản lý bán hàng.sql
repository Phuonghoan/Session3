

-- Tạo database LibraryDB
CREATE DATABASE LibraryDB;

-- Tạo database sales
CREATE SCHEMA sales;

-- Tạo bảng Products
CREATE TABLE sales.Products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(255),
    price NUMERIC(10,2),
    stock_quantity INT
);

-- Tạo bảng OrderDetails
CREATE TABLE sales.OrderDetails (
    order_detail_id SERIAL PRIMARY KEY,
    order_id INT REFERENCES sales.Orders(order_id),
    product_id INT REFERENCES sales.Products(product_id),
    quantity INT
);