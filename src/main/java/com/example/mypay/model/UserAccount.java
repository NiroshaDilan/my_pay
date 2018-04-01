package com.example.mypay.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;
import java.util.Set;

import static javax.persistence.CascadeType.ALL;
import static javax.persistence.GenerationType.AUTO;

@Entity
@Table(name = "user_account", catalog = "MY_PAY")
public class UserAccount implements Serializable {

    @Id
    @GeneratedValue(strategy = AUTO)
    private int id;
    @Column(unique = true)
    private String accountName;
    private boolean isActive;
    private Date openDate;
    private Date closeDate;

    @OneToOne(cascade = ALL)
    @JoinColumn(name = "user_id")
    private User user;

    @OneToOne(mappedBy = "userAccount")
    private LesiPayAccount lesiPayAccount;

    @OneToMany(mappedBy = "userAccount", cascade = ALL)
    private Set<Order> orderSet;

    public UserAccount() {
    }

    public UserAccount(String accountName, boolean isActive,
                       Date openDate, Date closeDate, User user,
                       LesiPayAccount lesiPayAccount, Set<Order> orderSet) {
        this.accountName = accountName;
        this.isActive = isActive;
        this.openDate = openDate;
        this.closeDate = closeDate;
        this.user = user;
        this.lesiPayAccount = lesiPayAccount;
        this.orderSet = orderSet;
    }


    public UserAccount setAccountName(String accountName) {
        this.accountName = accountName;
        return this;
    }

    public UserAccount setIsActive(boolean isActive) {
        this.isActive = isActive;
        return this;
    }

    public UserAccount setOpenDate(Date openDate) {
        this.openDate = openDate;
        return this;
    }

    public UserAccount setCloseDate(Date closeDate) {
        this.closeDate = closeDate;
        return this;
    }

    public UserAccount setUser(User user) {
        this.user = user;
        return this;
    }

    public UserAccount setLesiPayAccount(LesiPayAccount lesiPayAccount) {
        this.lesiPayAccount = lesiPayAccount;
        return this;
    }

    public UserAccount setOrderSet(Set<Order> orderSet) {
        this.orderSet = orderSet;
        return this;
    }

    public UserAccount createUserAccount() {
        return new UserAccount(accountName, isActive, openDate, closeDate, user, lesiPayAccount, orderSet);
    }
}
