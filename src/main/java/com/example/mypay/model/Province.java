package com.example.mypay.model;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Set;

import static javax.persistence.CascadeType.ALL;
import static javax.persistence.GenerationType.AUTO;

@Entity
@Table(name = "province", catalog = "MY_PAY")
public class Province implements Serializable {

    @Id
    @GeneratedValue(strategy = AUTO)
    private int id;
    @Column(name = "name_en")
    private String nameEn;
    @Column(name = "name_si")
    private String nameSi;
    @Column(name = "name_ta")
    private String nameTa;

    @OneToMany(mappedBy = "province", cascade = ALL)
    private Set<Address> addressSet;

    @JsonIgnore
    @OneToMany(mappedBy = "province", cascade = ALL)
    private Set<District> districtSet;

    public Province() {
    }

    public Province(String nameEn, String nameSi, String nameTa, Set<Address> addressSet, Set<District> districtSet) {
        this.nameEn = nameEn;
        this.nameSi = nameSi;
        this.nameTa = nameTa;
        this.addressSet = addressSet;
        this.districtSet = districtSet;
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

    public Set<Address> getAddressSet() {
        return addressSet;
    }

    public Set<District> getDistrictSet() {
        return districtSet;
    }

    public Province setNameEn(String nameEn) {
        this.nameEn = nameEn;
        return this;
    }

    public Province setNameSi(String nameSi) {
        this.nameSi = nameSi;
        return this;
    }

    public Province setNameTa(String nameTa) {
        this.nameTa = nameTa;
        return this;
    }

    public Province setAddressSet(Set<Address> addressSet) {
        this.addressSet = addressSet;
        return this;
    }

    public Province setDistrictSet(Set<District> districtSet) {
        this.districtSet = districtSet;
        return this;
    }

    public Province createProvince() {
        return new Province(nameEn, nameSi, nameTa, addressSet, districtSet);
    }
}
