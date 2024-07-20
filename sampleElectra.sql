USE electra;

-- Insert sample data into address table
INSERT INTO address (street, city, state, country, postal_code) VALUES
('123 Elm St', 'Springfield', 'IL', 'USA', '62701'),
('456 Oak St', 'Metropolis', 'NY', 'USA', '10001'),
('789 Pine St', 'Gotham', 'NJ', 'USA', '07001'),
('101 Maple Ave', 'Star City', 'CA', 'USA', '90001'),
('202 Birch Rd', 'Central City', 'IL', 'USA', '60601');

-- Insert sample data into brand table
INSERT INTO brand (name, description, address_id) VALUES
('TechBrand', 'Leading manufacturer of electronic devices.', 1),
('GadgetCo', 'Innovative solutions for tech enthusiasts.', 2),
('ElectroInc', 'High-quality electronic components and devices.', 3);

-- Insert sample data into supplier table
INSERT INTO supplier (name, contact_info, address_id) VALUES
('SupplierOne', 'contact@supplierone.com', 1),
('SupplierTwo', 'info@suppliertwo.com', 2),
('SupplierThree', 'support@supplierthree.com', 4);

-- Insert sample data into product table
INSERT INTO product (name, description, price, brand_id, supplier_id) VALUES
('Smartphone X', 'Latest model with advanced features.', 699.99, 1, 1),
('Laptop Y', 'High performance laptop for professionals.', 1299.99, 2, 2),
('Smartwatch Z', 'Wearable technology with health tracking.', 199.99, 3, 3);

-- Insert sample data into customer table
INSERT INTO customer (name, email, address_id) VALUES
('John Doe', 'john.doe@example.com', 1),
('Jane Smith', 'jane.smith@example.com', 2),
('Alice Johnson', 'alice.johnson@example.com', 3);

-- Insert sample data into orders table
INSERT INTO orders (product_id, customer_id, order_date) VALUES
(1, 1, '2024-07-15'),
(2, 2, '2024-07-16'),
(3, 3, '2024-07-17');

-- Insert sample data into payment table
INSERT INTO payment (amount, payment_date, customer_id, order_id) VALUES
(699.99, '2024-07-15', 1, 1),
(1299.99, '2024-07-16', 2, 2),
(199.99, '2024-07-17', 3, 3);

SELECT * FROM payment;
