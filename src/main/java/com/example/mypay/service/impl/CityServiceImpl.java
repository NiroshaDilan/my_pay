package com.example.mypay.service.impl;

import com.example.mypay.model.City;
import com.example.mypay.repository.CityRepository;
import com.example.mypay.service.CityService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("cityService")
@Transactional
public class CityServiceImpl implements CityService {

    private CityRepository cityRepository;

    public CityServiceImpl(CityRepository cityRepository) {
        this.cityRepository = cityRepository;
    }


    @Override
    public City findById(int id) {
        return cityRepository.findOne(id);
    }

    @Override
    public void saveCity(City city) {
        cityRepository.save(city);
    }

    @Override
    public void updateCity(City city) {
        saveCity(city);
    }

    @Override
    public void deleteCityById(int id) {
        cityRepository.delete(id);
    }

    @Override
    public void deleteAllCities() {
        cityRepository.deleteAll();
    }

    @Override
    public List<City> findAllCities() {
        return cityRepository.findAll();
    }

    @Override
    public List<City> findCitiesByDistrict(Integer id) {
        return cityRepository.findCitiesByDistrict(id);
    }
}
