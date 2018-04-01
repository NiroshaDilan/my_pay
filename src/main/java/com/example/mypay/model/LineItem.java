package com.example.mypay.model;

import javax.persistence.*;

import java.io.Serializable;
import java.util.Date;

import static javax.persistence.GenerationType.AUTO;

@Entity
@Table(name = "line_item", catalog = "MY_PAY")
public class LineItem implements Serializable {

    @Id
    @GeneratedValue(strategy = AUTO)
    private int id;
    private int quantity;
    private double price;
    private Date expireDate;
    private Date manufactureDate;

    @ManyToOne
    @JoinColumn(name = "order_id")
    private Order order;

    @ManyToOne
    @JoinColumn(name = "product_id")
    private Product product;

}
