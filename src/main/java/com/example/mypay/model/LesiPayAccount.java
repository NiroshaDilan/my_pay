package com.example.mypay.model;

import javax.persistence.*;
import java.io.Serializable;

import static javax.persistence.CascadeType.ALL;
import static javax.persistence.GenerationType.AUTO;

@Entity
@Table(name = "lesipay_account", catalog = "MY_PAY")
public class LesiPayAccount implements Serializable {

    @Id
    @GeneratedValue(strategy = AUTO)
    private int id;
    @Column(unique = true)
    private Long lesipayId;
    private String lesipayAccountName;
    private double outstanding;
    private int accountStatus;

    @OneToOne(cascade = ALL)
    @JoinColumn(name = "order_id")
    private Order order;

    @OneToOne(cascade = ALL)
    @JoinColumn(name = "user_account_id")
    private UserAccount userAccount;

    public LesiPayAccount() {
    }
}
