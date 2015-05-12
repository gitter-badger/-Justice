package com.cava.model;

import javax.persistence.*;

/**
 * Created by roma on 12.05.15.
 */
@Entity
@Table(name = "user_data")
public class Employee {

    private int id;
    private String fullName;
    private String bill;
    private double rate;

    @Id
    @Column(name = "id_user")
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Column(name = "full_name")
    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getBill() {
        return bill;
    }

    public void setBill(String bill) {
        this.bill = bill;
    }

    @Column(name = "rate_per_hour")
    public double getRate() {
        return rate;
    }

    public void setRate(double rate) {
        this.rate = rate;
    }
}
