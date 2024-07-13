package com.ChandrashekharWagh.electronicBrandManagement.model;

import java.util.Date;

public class Payment {
    private int id;
    private String paymentType;
    private String transactionId;
    private Date paymentDate;
    private double amount;


    public Payment(int id, String paymentType, String transactionId, Date paymentDate, double amount) {
        this.id = id;
        this.paymentType = paymentType;
        this.transactionId = transactionId;
        this.paymentDate = paymentDate;
        this.amount = amount;
    }


    @Override
    public String toString() {
        return "Payment{" +
                "id=" + id +
                ", paymentType='" + paymentType + '\'' +
                ", transactionId='" + transactionId + '\'' +
                ", paymentDate=" + paymentDate +
                ", amount=" + amount +
                '}';
    }


}
