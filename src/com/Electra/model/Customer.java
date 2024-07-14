package com.Electra.model;


import java.util.List;

public class Customer {
    private int id;
    private String name;
    private String email;
    private String phoneNumber;
    private Address address;
    private List<Order> orders;

    public Customer(int id, String name, String email, String phoneNumber, Address address, List<Order> orders) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.address = address;
        this.orders = orders;
    }

    @Override
    public String toString() {
        return "Customer{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", phoneNumber='" + phoneNumber + '\'' +
                ", address=" + address +
                ", orders=" + orders +
                '}';
    }


}

