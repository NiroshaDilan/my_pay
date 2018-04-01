package com.example.mypay.model;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Set;

import static javax.persistence.CascadeType.ALL;
import static javax.persistence.GenerationType.AUTO;

@Entity
@Table(name = "district", catalog = "MY_PAY")
public class District implements Serializable {

    @Id
    @GeneratedValue(strategy = AUTO)
    private int id;
    @Column(name = "name_en")
    private String nameEn;
    @Column(name = "name_si")
    private String nameSi;
    @Column(name = "name_ta")
    private String nameTa;

    @ManyToOne
    @JoinColumn(name = "province_id")
    private Province province;

    @OneToMany(mappedBy = "district", cascade = ALL)
    private Set<Address> addressSet;

    @JsonIgnore
    @OneToMany(mappedBy = "district", cascade = ALL)
    private Set<City> citySet;

    public District() {
    }

    public District(String nameEn, String nameSi, String nameTa, Province province,
                    Set<Address> addressSet, Set<City> citySet) {
        this.nameEn = nameEn;
        this.nameSi = nameSi;
        this.nameTa = nameTa;
        this.province = province;
        this.addressSet = addressSet;
        this.citySet = citySet;
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

    public Province getProvince() {
        return province;
    }

    public Set<Address> getAddressSet() {
        return addressSet;
    }

    public Set<City> getCitySet() {
        return citySet;
    }

    public District setNameEn(String nameEn) {
        this.nameEn = nameEn;
        return this;
    }

    public District setNameSi(String nameSi) {
        this.nameSi = nameSi;
        return this;
    }

    public District setNameTa(String nameTa) {
        this.nameTa = nameTa;
        return this;
    }

    public District setProvince(Province province) {
        this.province = province;
        return this;
    }

    public District setAddressSet(Set<Address> addressSet) {
        this.addressSet = addressSet;
        return this;
    }

    public District setCitySet(Set<City> citySet) {
        this.citySet = citySet;
        return this;
    }

    public District createDistrict() {
        return new District(nameEn, nameSi, nameTa, province, addressSet, citySet);
    }
}
