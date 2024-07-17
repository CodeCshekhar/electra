package com.Electra.model;

import java.util.Date;

public class Payment {
    private Long id;
    private Double amount;
    private Date paymentDate;
    private Customer customer;
    private Order order;

    // Constructors, getters, setters, and other methods

    public Payment(Long id, Double amount, Date paymentDate, Customer customer, Order order) {
        this.id = id;
        this.amount = amount;
        this.paymentDate = paymentDate;
        this.customer = customer;
        this.order = order;
    }


    // Getters and Setters (omitted for brevity)

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Double getAmount() {
        return amount;
    }

    public void setAmount(Double amount) {
        this.amount = amount;
    }

    public Date getPaymentDate() {
        return paymentDate;
    }

    public void setPaymentDate(Date paymentDate) {
        this.paymentDate = paymentDate;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public Order getOrder() {
        return order;
    }

    public void setOrder(Order order) {
        this.order = order;
    }

    @Override
    public String toString() {
        return "Payment{" +
                "id=" + id +
                ", amount=" + amount +
                ", paymentDate=" + paymentDate +
                ", customer=" + customer +
                ", order=" + order +
                '}';
    }
}