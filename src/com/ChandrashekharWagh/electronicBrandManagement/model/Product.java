package com.ChandrashekharWagh.electronicBrandManagement.model;

public class Product {
    private int id;
    private String name;
    private String description;
    private double price;
    private Supplier supplier; // Add Supplier field



    public Product(int id, String name, String description, double price, Supplier supplier) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.price = price;
        this.supplier = supplier;
    }



    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", price=" + price +
                ", supplier=" + supplier +
                '}';
    }


}

