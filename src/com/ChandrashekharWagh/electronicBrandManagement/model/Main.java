package com.ChandrashekharWagh.electronicBrandManagement.model;

import java.util.Arrays;
import java.util.Date;
import java.util.List;

public class Main {
    public static void main(String[] args) {

        Address address = new Address("123 Main St", "Springfield", "IL", "62701", "USA");

        Product product1 = new Product(1, "Laptop", "A high-performance laptop", 1200.00);
        Product product2 = new Product(2, "Mouse", "Wireless mouse", 25.00);

        Payment payment = new Payment(1, "Credit Card", "TX123456", new Date(), 1225.00);

        List<Product> products = Arrays.asList(product1, product2);
        Order order = new Order(1, new Date(), products, 1225.00, payment);

        List<Order> orders = List.of(order);
        Customer customer = new Customer(1, "John Doe", "john.doe@example.com", "555-1234", address, orders);

        System.out.println(customer);
    }
}

