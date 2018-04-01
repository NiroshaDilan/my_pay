package com.example.mypay.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;
import java.util.Set;

import static javax.persistence.CascadeType.ALL;
import static javax.persistence.GenerationType.AUTO;

@Entity
@Table(name = "order", catalog = "MY_PAY")
public class Order implements Serializable {

    @Id
    @GeneratedValue(strategy = AUTO)
    private int id;

    @Column(unique = true)
    private String orderNumber;
    private Date orderedDate;
    private Date shippedDate;
    private Double total;

    @OneToOne
    @JoinColumn(name = "payment_id")
    private Payment payment;

    @OneToOne(mappedBy = "order")
    private LesiPayAccount lesiPayAccount;

    @ManyToOne
    @JoinColumn(name = "user_account_id")
    private UserAccount userAccount;

    @OneToMany(mappedBy = "order", cascade = ALL)
    private Set<LineItem> lineItemSet;

    public Order() {
    }
}
