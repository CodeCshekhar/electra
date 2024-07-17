package com.Electra.model;

import java.util.Date;

public class Order {
    private Long id;
    private Product product;
    private Customer customer;
    private Date orderDate;

    // Constructors, getters, setters, and other methods

    public Order(Long id, Product product, Customer customer, Date orderDate) {
        this.id = id;
        this.product = product;
        this.customer = customer;
        this.orderDate = orderDate;
    }


    // Getters and Setters (omitted for brevity)

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    @Override
    public String toString() {
        return "Order{" +
                "id=" + id +
                ", product=" + product +
                ", customer=" + customer +
                ", orderDate=" + orderDate +
                '}';
    }
}

