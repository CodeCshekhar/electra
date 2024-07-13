package com.ChandrashekharWagh.electronicBrandManagement.model;

import java.util.Arrays;
import java.util.Date;
import java.util.List;

public class Main {
    public static void main(String[] args) {
        // Create supplier
        Address supplierAddress = new Address("456 Supplier St", "Springfield", "IL", "62702", "USA");
        Supplier supplier = new Supplier(1, "Tech Suppliers Inc.", "info@techsuppliers.com", "555-5678", supplierAddress);

        // Create product with supplier
        Product product1 = new Product(1, "Laptop", "A high-performance laptop", 1200.00, supplier);
        Product product2 = new Product(2, "Mouse", "Wireless mouse", 25.00, supplier);

        // Create payment
        Payment payment = new Payment(1, "Credit Card", "TX123456", new Date(), 1225.00);

        // Create order
        List<Product> products = Arrays.asList(product1, product2);
        Order order = new Order(1, new Date(), products, 1225.00, payment);

        // Create customer
        Address customerAddress = new Address("123 Main St", "Springfield", "IL", "62701", "USA");
        List<Order> orders = Arrays.asList(order);
        Customer customer = new Customer(1, "John Doe", "john.doe@example.com", "555-1234", customerAddress, orders);

        // Print customer details
        System.out.println(customer);
    }
}


