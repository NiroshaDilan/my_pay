package com.example.mypay.model;

import javax.persistence.*;
import java.io.Serializable;

import static javax.persistence.GenerationType.AUTO;

@Entity
@Table(name = "phone_number", catalog = "MY_PAY")
public class PhoneNumber implements Serializable {

    @Id
    @GeneratedValue(strategy = AUTO)
    private int id;
    private String provider;
    private String number;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    public PhoneNumber() {

    }

    public PhoneNumber(String provider, String number, User user) {
        this.provider = provider;
        this.number = number;
        this.user = user;
    }


    public PhoneNumber setProvider(String provider) {
        this.provider = provider;
        return this;
    }

    public PhoneNumber setNumber(String number) {
        this.number = number;
        return this;
    }

    public PhoneNumber setUser(User user) {
        this.user = user;
        return this;
    }

    public PhoneNumber createPhoneNumber() {
        return new PhoneNumber(provider, number, user);
    }
}
