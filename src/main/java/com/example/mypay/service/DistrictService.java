package com.example.mypay.service;

import com.example.mypay.model.District;

import java.util.List;

public interface DistrictService {

    District findById(int id);

    void saveDistrict(District district);

    void updateDistrict(District district);

    void deleteDistrictById(int id);

    void deleteAllDistricts();

    List<District> findAllDistricts();

    public List<District> findDistrictByProvince(Integer id);
}
