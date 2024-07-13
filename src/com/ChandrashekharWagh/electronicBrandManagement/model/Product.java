package com.ChandrashekharWagh.electronicBrandManagement.model;

public class Product {
    private int id;
    private String name;
    private String description;
    private double price;


    public Product(int id, String name, String description, double price) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.price = price;
    }



    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", price=" + price +
                '}';
    }


}
