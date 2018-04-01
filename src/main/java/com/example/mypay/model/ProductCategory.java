package com.example.mypay.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Set;

import static javax.persistence.CascadeType.ALL;
import static javax.persistence.GenerationType.AUTO;

@Entity
@Table(name = "product_category", catalog = "MY_PAY")
public class ProductCategory implements Serializable {

    @Id
    @GeneratedValue(strategy = AUTO)
    private int id;
    @Column(unique = true)
    private String code;
    private String name;

    @OneToMany(mappedBy = "productCategory", cascade = ALL)
    private Set<Product> productSet;

}
