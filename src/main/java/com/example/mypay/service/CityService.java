package com.example.mypay.service;

import com.example.mypay.model.City;

import java.util.List;

public interface CityService {

    City findById(int id);

    void saveCity(City city);

    void updateCity(City city);

    void deleteCityById(int id);

    void deleteAllCities();

    List<City> findAllCities();

    public List<City> findCitiesByDistrict(Integer id);
}
