package com.Electra.model;

import java.util.Date;
import java.util.List;

public class Order {
    private int id;
    private Date date;
    private Product products;
    private double totalAmount;
    private Payment payment;




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

