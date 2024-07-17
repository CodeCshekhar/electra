DROP DATABASE IF EXISTS electra;

-- Create database
CREATE DATABASE  electra;

-- Switch to the created database
USE electra;

-- Table for Brand entity
CREATE TABLE brand (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT
);

-- Table for Supplier entity
CREATE TABLE supplier (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    contact_info TEXT
);

-- Table for Product entity
CREATE TABLE product (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL,
    brand_id BIGINT,
    supplier_id BIGINT,
    FOREIGN KEY (brand_id) REFERENCES brand(id),
    FOREIGN KEY (supplier_id) REFERENCES supplier(id)
);

-- Table for Customer entity
CREATE TABLE customer (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL
);

-- Table for Orders (renamed from 'order' to 'orders')
CREATE TABLE orders (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    product_id BIGINT,
    customer_id BIGINT,
    order_date DATE,
    FOREIGN KEY (product_id) REFERENCES product(id),
    FOREIGN KEY (customer_id) REFERENCES customer(id)
);

-- Table for Payment entity
CREATE TABLE payment (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    amount DECIMAL(10, 2) NOT NULL,
    payment_date DATE NOT NULL,
    customer_id BIGINT,
    order_id BIGINT,
    FOREIGN KEY (customer_id) REFERENCES customer(id),
    FOREIGN KEY (order_id) REFERENCES orders(id)
);