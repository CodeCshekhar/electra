package com.Electra.model;

public class Brand {
    private Long id;
    private String name;
    private String description;
    private Address address;

    // Constructors, getters, setters, and other methods

    public Brand(Long id, String name, String description, Address address) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.address = address;
    }


    // Getters and Setters (omitted for brevity)

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "Brand{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", address=" + address +
                '}';
    }
}