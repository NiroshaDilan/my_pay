package com.example.mypay.repository;

import com.example.mypay.model.City;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface CityRepository extends JpaRepository<City, Integer> {

    @Query("SELECT new com.example.mypay.dto.CityDto(c.id, c.nameEn, c.nameSi, c.nameTa, c.postcode) " +
            "FROM City as c INNER JOIN c.district as d WHERE d.id = ?1")
    public List<City> findCitiesByDistrict(Integer id);
}
