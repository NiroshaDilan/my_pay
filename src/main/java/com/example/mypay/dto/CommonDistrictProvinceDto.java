package com.example.mypay.dto;

public class CommonDistrictProvinceDto {

    private int id;
    private String nameEn;
    private String nameSi;
    private String nameTa;

    public CommonDistrictProvinceDto() {
    }

    public CommonDistrictProvinceDto(int id, String nameEn, String nameSi, String nameTa) {
        this.id = id;
        this.nameEn = nameEn;
        this.nameSi = nameSi;
        this.nameTa = nameTa;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNameEn() {
        return nameEn;
    }

    public void setNameEn(String nameEn) {
        this.nameEn = nameEn;
    }

    public String getNameSi() {
        return nameSi;
    }

    public void setNameSi(String nameSi) {
        this.nameSi = nameSi;
    }

    public String getNameTa() {
        return nameTa;
    }

    public void setNameTa(String nameTa) {
        this.nameTa = nameTa;
    }
}
