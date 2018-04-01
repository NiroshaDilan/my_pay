package com.example.mypay.service.impl;

import com.example.mypay.model.Province;
import com.example.mypay.repository.ProvinceRepository;
import com.example.mypay.service.ProvinceService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("provinceService")
@Transactional
public class ProvinceServiceImpl implements ProvinceService {

    private ProvinceRepository provinceRepository;

    public ProvinceServiceImpl(ProvinceRepository provinceRepository) {
        this.provinceRepository = provinceRepository;
    }

    @Override
    public Province findById(int id) {
        return provinceRepository.findOne(id);
    }

    @Override
    public void saveProvince(Province province) {
        provinceRepository.save(province);
    }

    @Override
    public void updateProvince(Province province) {
        saveProvince(province);
    }

    @Override
    public void deleteProvinceById(int id) {
        provinceRepository.delete(id);
    }

    @Override
    public void deleteAllProvinces() {
        provinceRepository.deleteAll();
    }

    @Override
    public List<Province> findAllProvinces() {
        return provinceRepository.findAll();
    }

}
