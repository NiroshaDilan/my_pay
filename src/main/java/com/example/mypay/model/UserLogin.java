package com.example.mypay.model;

import javax.persistence.*;
import java.io.Serializable;

import static javax.persistence.GenerationType.AUTO;

@Entity
@Table(name = "user_login", catalog = "MY_PAY")
public class UserLogin implements Serializable {

    @Id
    @GeneratedValue(strategy = AUTO)
    private int id;
    private String name;
    private String email;
    private String password;
    private int passwordActiveStatus;
}
