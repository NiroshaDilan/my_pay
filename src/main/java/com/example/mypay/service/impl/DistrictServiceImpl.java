package com.example.mypay.service.impl;

import com.example.mypay.model.District;
import com.example.mypay.repository.DistrictRepository;
import com.example.mypay.service.DistrictService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("districtService")
@Transactional
public class DistrictServiceImpl implements DistrictService {

    private DistrictRepository districtRepository;

    public DistrictServiceImpl(DistrictRepository districtRepository) {
        this.districtRepository = districtRepository;
    }

    @Override
    public District findById(int id) {
        return districtRepository.findOne(id);
    }

    @Override
    public void saveDistrict(District district) {
        districtRepository.save(district);
    }

    @Override
    public void updateDistrict(District district) {
        saveDistrict(district);
    }

    @Override
    public void deleteDistrictById(int id) {
        districtRepository.delete(id);
    }

    @Override
    public void deleteAllDistricts() {
        districtRepository.deleteAll();
    }

    @Override
    public List<District> findAllDistricts() {
        return districtRepository.findAll();
    }

    @Override
    public List<District> findDistrictByProvince(Integer id) {
        return districtRepository.findDistrictByProvince(id);
    }


}
