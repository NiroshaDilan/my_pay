package com.example.mypay.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Set;

import static javax.persistence.GenerationType.AUTO;

@Entity
@Table(name = "product_spec", catalog = "MY_PAY")
public class ProductSpecification implements Serializable {

    @Id
    @GeneratedValue(strategy = AUTO)
    private int id;
    private String model;
    private String color;
    private String description;

    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(name = "prdct_prdct_spec",
            joinColumns = @JoinColumn(name = "product_id", referencedColumnName = "id"),
            inverseJoinColumns = @JoinColumn(name = "product_spec_id", referencedColumnName = "id"))
    private Set<Product> productSet;
}
