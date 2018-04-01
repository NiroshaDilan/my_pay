package com.example.mypay.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Set;

import static javax.persistence.CascadeType.ALL;
import static javax.persistence.GenerationType.AUTO;

@Entity
@Table(name = "city", catalog = "MY_PAY")
public class City implements Serializable {

    @Id
    @GeneratedValue(strategy = AUTO)
    private int id;
    @Column(name = "name_en")
    private String nameEn;
    @Column(name = "name_si")
    private String nameSi;
    @Column(name = "name_ta")
    private String nameTa;
    @Column(name = "sub_name_en")
    private String subNameEn;
    @Column(name = "sub_name_si")
    private String subNameSi;
    @Column(name = "sub_name_ta")
    private String subNameTa;
    private String postcode;
    private double latitude;
    private double logitude;

    @ManyToOne
    @JoinColumn(name = "district_id")
    private District district;

    @OneToMany(mappedBy = "city", cascade = ALL)
    private Set<Address> addressSet;

    public City() {
    }

    public City(String nameEn, String nameSi, String nameTa, String subNameEn, String subNameSi,
                String subNameTa, String postcode, double latitude, double logitude,
                District district, Set<Address> addressSet) {
        this.nameEn = nameEn;
        this.nameSi = nameSi;
        this.nameTa = nameTa;
        this.subNameEn = subNameEn;
        this.subNameSi = subNameSi;
        this.subNameTa = subNameTa;
        this.postcode = postcode;
        this.latitude = latitude;
        this.logitude = logitude;
        this.district = district;
        this.addressSet = addressSet;
    }

    public int getId() {
        return id;
    }

    public String getNameEn() {
        return nameEn;
    }

    public String getNameSi() {
        return nameSi;
    }

    public String getNameTa() {
        return nameTa;
    }

    public String getSubNameEn() {
        return subNameEn;
    }

    public String getSubNameSi() {
        return subNameSi;
    }

    public String getSubNameTa() {
        return subNameTa;
    }

    public String getPostcode() {
        return postcode;
    }

    public double getLatitude() {
        return latitude;
    }

    public double getLogitude() {
        return logitude;
    }

    public District getDistrict() {
        return district;
    }

    public Set<Address> getAddressSet() {
        return addressSet;
    }

    public City setNameEn(String nameEn) {
        this.nameEn = nameEn;
        return this;
    }

    public City setNameSi(String nameSi) {
        this.nameSi = nameSi;
        return this;
    }

    public City setNameTa(String nameTa) {
        this.nameTa = nameTa;
        return this;
    }

    public City setSubNameEn(String subNameEn) {
        this.subNameEn = subNameEn;
        return this;
    }

    public City setSubNameSi(String subNameSi) {
        this.subNameSi = subNameSi;
        return this;
    }

    public City setSubNameTa(String subNameTa) {
        this.subNameTa = subNameTa;
        return this;
    }

    public City setPostcode(String postcode) {
        this.postcode = postcode;
        return this;
    }

    public City setLatitude(double latitude) {
        this.latitude = latitude;
        return this;
    }

    public City setLogitude(double logitude) {
        this.logitude = logitude;
        return this;
    }

    public City setDistrict(District district) {
        this.district = district;
        return this;
    }

    public City setAddressSet(Set<Address> addressSet) {
        this.addressSet = addressSet;
        return this;
    }

    public City createCity() {
        return new City(nameEn, nameSi, nameTa, subNameEn, subNameSi,
                subNameTa, postcode, latitude, logitude, district, addressSet);
    }
}
