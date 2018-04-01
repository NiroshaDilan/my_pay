package com.example.mypay.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Set;

import static javax.persistence.CascadeType.ALL;
import static javax.persistence.GenerationType.AUTO;

@Entity
@Table(name = "product", catalog = "MY_PAY")
public class Product implements Serializable {

    @Id
    @GeneratedValue(strategy = AUTO)
    private int id;
    private String productName;
    private String supplier;

    @OneToMany(mappedBy = "product", cascade = ALL)
    private Set<LineItem> lineItemSet;

    @ManyToOne
    @JoinColumn(name = "product_category_id")
    private ProductCategory productCategory;

    @ManyToMany(mappedBy = "productSet")
    private Set<ProductSpecification> productSpecificationSet;

}
