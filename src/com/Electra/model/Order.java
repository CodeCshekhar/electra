package com.Electra.model;

import java.util.Date;
import java.util.List;

public class Order {
    private int id;
    private Date date;
    private Product products;
    private double totalAmount;
    private Payment payment;


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Product getProducts() {
        return products;
    }

    public void setProducts(Product products) {
        this.products = products;
    }

    public double getTotalAmount() {
        return totalAmount;
    }

    public void setTotalAmount(double totalAmount) {
        this.totalAmount = totalAmount;
    }

    public Payment getPayment() {
        return payment;
    }

    public void setPayment(Payment payment) {
        this.payment = payment;
    }

    public Order(int id, Date date, List<Product> products, double totalAmount, Payment payment) {
        this.id = id;
        this.date = date;
        this.products = (Product) products;
        this.totalAmount = totalAmount;
        this.payment = payment;
    }



    @Override
    public String toString() {
        return "Order{" +
                "id=" + id +
                ", date=" + date +
                ", products=" + products +
                ", totalAmount=" + totalAmount +
                ", payment=" + payment +
                '}';
    }


}

