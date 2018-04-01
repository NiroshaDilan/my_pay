package com.example.mypay.service;


import com.example.mypay.model.Province;

import java.util.List;

public interface ProvinceService {

    Province findById(int id);

    void saveProvince(Province province);

    void updateProvince(Province province);

    void deleteProvinceById(int id);

    void deleteAllProvinces();

    List<Province> findAllProvinces();

}
