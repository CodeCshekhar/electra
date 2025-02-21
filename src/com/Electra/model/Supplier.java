package com.Electra.model;

public class Supplier {
    private Long id;
    private String name;
    private String contactInfo;
    private Address address;

    // Constructors, getters, setters, and other methods

    public Supplier(Long id, String name, String contactInfo, Address address) {
        this.id = id;
        this.name = name;
        this.contactInfo = contactInfo;
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

    public String getContactInfo() {
        return contactInfo;
    }

    public void setContactInfo(String contactInfo) {
        this.contactInfo = contactInfo;
    }

    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "Supplier{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", contactInfo='" + contactInfo + '\'' +
                ", address=" + address +
                '}';
    }
}
