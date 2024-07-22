DROP DATABASE IF EXISTS electra;

-- Create database
CREATE DATABASE  electra;

-- Switch to the created database
USE electra;

-- Table for Address entity
CREATE TABLE address (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    street VARCHAR(255) NOT NULL,
    city VARCHAR(255) NOT NULL,
    state VARCHAR(255),
    country VARCHAR(255) NOT NULL,
    postal_code VARCHAR(20) NOT NULL
);

-- Table for Brand entity
CREATE TABLE brand (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    address_id BIGINT,
    FOREIGN KEY (address_id) REFERENCES address(id)
);

-- Table for Supplier entity
CREATE TABLE supplier (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    contact_info TEXT,
    address_id BIGINT,
    FOREIGN KEY (address_id) REFERENCES address(id)
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
    email VARCHAR(255) NOT NULL,
    address_id BIGINT,
    FOREIGN KEY (address_id) REFERENCES address(id)
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

-- Insert sample data for Address entity
INSERT INTO address (id, street, city, state, country, postal_code) VALUES
(1,'MG Road', 'Bengaluru', 'Karnataka', 'India', '560001'),
(2,'Connaught Place', 'New Delhi', 'Delhi', 'India', '110001'),
(3,'Park Street', 'Kolkata', 'West Bengal', 'India', '700016'),
(4,'Marine Drive', 'Mumbai', 'Maharashtra', 'India', '400002'),
(5,'Anna Salai', 'Chennai', 'Tamil Nadu', 'India', '600002'),
(6,'Law Garden', 'Ahmedabad', 'Gujarat', 'India', '380006'),
(7,'Laxmi Road', 'Pune', 'Maharashtra', 'India', '411030'),
(8,'Charminar', 'Hyderabad', 'Telangana', 'India', '500002'),
(9,'Chandni Chowk', 'New Delhi', 'Delhi', 'India', '110006'),
(10,'Brigade Road', 'Bengaluru', 'Karnataka', 'India', '560025'),
(11,'M.G. Road', 'Indore', 'Madhya Pradesh', 'India', '452001'),
(12,'Banjara Hills', 'Hyderabad', 'Telangana', 'India', '500034'),
(13,'Sector 17', 'Chandigarh', 'Chandigarh', 'India', '160017'),
(14,'Shakespeare Sarani', 'Kolkata', 'West Bengal', 'India', '700017'),
(15,'Commercial Street', 'Bengaluru', 'Karnataka', 'India', '560001'),
(16,'Rajpath', 'New Delhi', 'Delhi', 'India', '110001'),
(17,'Raja SC Mullick Road', 'Kolkata', 'West Bengal', 'India', '700032'),
(18,'Linking Road', 'Mumbai', 'Maharashtra', 'India', '400050'),
(19,'Purasawalkam', 'Chennai', 'Tamil Nadu', 'India', '600084'),
(20,'SG Highway', 'Ahmedabad', 'Gujarat', 'India', '380054');

-- Insert sample data for Brand entity
INSERT INTO brand (name, description, address_id) VALUES
('Samsung', 'Leading manufacturer of electronics', 1),
('Sony', 'Renowned for high-quality electronics', 2),
('LG', 'Innovative electronics brand', 3),
('Apple', 'Premium electronics and technology', 4),
('Dell', 'Top computer hardware manufacturer', 5),
('HP', 'Leading provider of computers and printers', 6),
('Lenovo', 'Popular brand for laptops and desktops', 7),
('Asus', 'Known for gaming and performance laptops', 8),
('Acer', 'Affordable computers and peripherals', 9),
('Toshiba', 'Trusted brand for electronics', 10),
('Panasonic', 'High-quality electronic products', 11),
('Philips', 'Innovative healthcare and electronics', 12),
('OnePlus', 'Popular smartphone brand', 13),
('Xiaomi', 'Affordable and high-tech smartphones', 14),
('Vivo', 'Stylish and innovative smartphones', 15),
('Oppo', 'Advanced camera smartphones', 16),
('Realme', 'Affordable smartphones and gadgets', 17),
('Nokia', 'Reliable and durable phones', 18),
('Motorola', 'Known for innovative smartphones', 19),
('Micromax', 'Indian brand for budget electronics', 20);

-- Insert sample data for Supplier entity
INSERT INTO supplier (name, contact_info, address_id) VALUES
('Tech Distributors', 'techdistributors@example.com', 1),
('Electro Supply', 'electrosupply@example.com', 2),
('Global Electronics', 'globalelectronics@example.com', 3),
('Future Tech', 'futuretech@example.com', 4),
('Gadget Hub', 'gadgethub@example.com', 5),
('Smart Distributors', 'smartdistributors@example.com', 6),
('InnoTech Supply', 'innotechsupply@example.com', 7),
('Prime Suppliers', 'primesuppliers@example.com', 8),
('ElectroMart', 'electromart@example.com', 9),
('Gadget Zone', 'gadgetzone@example.com', 10),
('Mega Distributors', 'megadistributors@example.com', 11),
('Tech Store', 'techstore@example.com', 12),
('Digital Supply', 'digitalsupply@example.com', 13),
('Device Hub', 'devicehub@example.com', 14),
('Gizmo Distributors', 'gizmodistributors@example.com', 15),
('Future Electronics', 'futureelectronics@example.com', 16),
('NextGen Supply', 'nextgensupply@example.com', 17),
('UltraTech Supply', 'ultratechsupply@example.com', 18),
('PrimeTech', 'primetech@example.com', 19),
('Elite Suppliers', 'elitesuppliers@example.com', 20);

-- Insert sample data for Product entity
INSERT INTO product (name, description, price, brand_id, supplier_id) VALUES
('Samsung Galaxy S21', 'Latest Samsung smartphone', 69999.00, 1, 1),
('Sony Bravia TV', 'High-definition television', 79999.00, 2, 2),
('LG Refrigerator', 'Energy-efficient refrigerator', 34999.00, 3, 3),
('Apple iPhone 13', 'Latest iPhone model', 89999.00, 4, 4),
('Dell Inspiron', 'Powerful laptop for everyday use', 59999.00, 5, 5),
('HP Pavilion', 'High-performance laptop', 64999.00, 6, 6),
('Lenovo ThinkPad', 'Business laptop with top specs', 74999.00, 7, 7),
('Asus ROG', 'Gaming laptop with high-end specs', 99999.00, 8, 8),
('Acer Aspire', 'Affordable laptop with good specs', 45999.00, 9, 9),
('Toshiba Satellite', 'Reliable and durable laptop', 55999.00, 10, 10),
('Panasonic Lumix', 'High-quality digital camera', 29999.00, 11, 11),
('Philips Air Purifier', 'Efficient air purification', 9999.00, 12, 12),
('OnePlus 9 Pro', 'Flagship OnePlus smartphone', 64999.00, 13, 13),
('Xiaomi Mi 11', 'High-tech smartphone with great features', 49999.00, 14, 14),
('Vivo X60', 'Stylish smartphone with good camera', 39999.00, 15, 15),
('Oppo Reno5', 'Advanced camera smartphone', 37999.00, 16, 16),
('Realme 8 Pro', 'Affordable smartphone with great specs', 19999.00, 17, 17),
('Nokia 3310', 'Durable and reliable phone', 3999.00, 18, 18),
('Motorola Moto G', 'Innovative smartphone with good features', 21999.00, 19, 19),
('Micromax IN Note 1', 'Budget smartphone with decent specs', 10999.00, 20, 20);

-- Insert sample data for Customer entity
INSERT INTO customer (name, email, address_id) VALUES
('Amit Sharma', 'amit.sharma@example.com', 1),
('Priya Kapoor', 'priya.kapoor@example.com', 2),
('Rahul Verma', 'rahul.verma@example.com', 3),
('Anjali Singh', 'anjali.singh@example.com', 4),
('Ravi Kumar', 'ravi.kumar@example.com', 5),
('Sneha Gupta', 'sneha.gupta@example.com', 6),
('Vikram Patel', 'vikram.patel@example.com', 7),
('Sonal Jain', 'sonal.jain@example.com', 8),
('Arjun Reddy', 'arjun.reddy@example.com', 9),
('Pooja Mehta', 'pooja.mehta@example.com', 10),
('Manoj Agarwal', 'manoj.agarwal@example.com', 11),
('Kavita Desai', 'kavita.desai@example.com', 12),
('Ankit Joshi', 'ankit.joshi@example.com', 13),
('Neha Malhotra', 'neha.malhotra@example.com', 14),
('Suresh Nair', 'suresh.nair@example.com', 15),
('Lakshmi Iyer', 'lakshmi.iyer@example.com', 16),
('Abhinav Sharma', 'abhinav.sharma@example.com', 17),
('Meera Raj', 'meera.raj@example.com', 18),
('Rohan Khanna', 'rohan.khanna@example.com', 19),
('Divya Pandey', 'divya.pandey@example.com', 20);

-- Insert sample data for Orders entity
INSERT INTO orders (product_id, customer_id, order_date) VALUES
(1, 1, '2024-01-10'),
(2, 2, '2024-01-11'),
(3, 3, '2024-01-12'),
(4, 4, '2024-01-13'),
(5, 5, '2024-01-14'),
(6, 6, '2024-01-15'),
(7, 7, '2024-01-16'),
(8, 8, '2024-01-17'),
(9, 9, '2024-01-18'),
(10, 10, '2024-01-19'),
(11, 11, '2024-01-20'),
(12, 12, '2024-01-21'),
(13, 13, '2024-01-22'),
(14, 14, '2024-01-23'),
(15, 15, '2024-01-24'),
(16, 16, '2024-01-25'),
(17, 17, '2024-01-26'),
(18, 18, '2024-01-27'),
(19, 19, '2024-01-28'),
(20, 20, '2024-01-29');

-- Insert sample data for Payment entity
INSERT INTO payment (amount, payment_date, customer_id, order_id) VALUES
(69999.00, '2024-01-11', 1, 1),
(79999.00, '2024-01-12', 2, 2),
(34999.00, '2024-01-13', 3, 3),
(89999.00, '2024-01-14', 4, 4),
(59999.00, '2024-01-15', 5, 5),
(64999.00, '2024-01-16', 6, 6),
(74999.00, '2024-01-17', 7, 7),
(99999.00, '2024-01-18', 8, 8),
(45999.00, '2024-01-19', 9, 9),
(55999.00, '2024-01-20', 10, 10),
(29999.00, '2024-01-21', 11, 11),
(9999.00, '2024-01-22', 12, 12),
(64999.00, '2024-01-23', 13, 13),
(49999.00, '2024-01-24', 14, 14),
(39999.00, '2024-01-25', 15, 15),
(37999.00, '2024-01-26', 16, 16),
(19999.00, '2024-01-27', 17, 17),
(3999.00, '2024-01-28', 18, 18),
(21999.00, '2024-01-29', 19, 19),
(10999.00, '2024-01-30', 20, 20);

SELECT * FROM address;
SELECT * FROM payment;
SELECT * FROM brand;