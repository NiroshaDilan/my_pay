package com.example.mypay.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Set;

import static javax.persistence.CascadeType.ALL;
import static javax.persistence.GenerationType.AUTO;

@Entity
@Table(name = "address", catalog = "MY_PAY")
public class Address implements Serializable {

    @Id
    @GeneratedValue(strategy = AUTO)
    private int id;
    private int activeStatus;
    private String no;
    private String lane1;
    private String lane2;

    @ManyToOne
    @JoinColumn(name = "district_id")
    private District district;

    @ManyToOne
    @JoinColumn(name = "city_id")
    private City city;

    @ManyToOne
    @JoinColumn(name = "province_id")
    private Province province;

    @ManyToMany(mappedBy = "addressSet", cascade = ALL)
    private Set<User> userSet;

    public Address() {
    }

    public Address(int activeStatus, String no, String lane1, String lane2, District district,
                   City city, Province province, Set<User> userSet) {
        this.activeStatus = activeStatus;
        this.no = no;
        this.lane1 = lane1;
        this.lane2 = lane2;
        this.district = district;
        this.city = city;
        this.province = province;
        this.userSet = userSet;
    }


    public Address setActiveStatus(int activeStatus) {
        this.activeStatus = activeStatus;
        return this;
    }

    public Address setNo(String no) {
        this.no = no;
        return this;
    }

    public Address setLane1(String lane1) {
        this.lane1 = lane1;
        return this;
    }

    public Address setLane2(String lane2) {
        this.lane2 = lane2;
        return this;
    }

    public Address setDistrict(District district) {
        this.district = district;
        return this;
    }

    public Address setCity(City city) {
        this.city = city;
        return this;
    }

    public Address setProvince(Province province) {
        this.province = province;
        return this;
    }

    public Address setUserSet(Set<User> userSet) {
        this.userSet = userSet;
        return this;
    }

    public Address createAddress() {
        return new Address(activeStatus, no, lane1, lane2, district, city, province, userSet);
    }
}
