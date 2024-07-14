package com.Electra.model;

import java.util.Date;

public class Payment {
    private int id;
    private String paymentType;
    private String transactionId;
    private Date paymentDate;
    private double amount;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPaymentType() {
        return paymentType;
    }

    public void setPaymentType(String paymentType) {
        this.paymentType = paymentType;
    }

    public String getTransactionId() {
        return transactionId;
    }

    public void setTransactionId(String transactionId) {
        this.transactionId = transactionId;
    }

    public Date getPaymentDate() {
        return paymentDate;
    }

    public void setPaymentDate(Date paymentDate) {
        this.paymentDate = paymentDate;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

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
