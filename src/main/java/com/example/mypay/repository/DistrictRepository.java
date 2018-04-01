package com.example.mypay.repository;

import com.example.mypay.model.District;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface DistrictRepository extends JpaRepository<District, Integer> {

    @Query("SELECT new com.example.mypay.dto.CommonDistrictProvinceDto(d.id, d.nameEn, d.nameSi, d.nameTa) " +
            "FROM District as d INNER JOIN d.province as p WHERE p.id = ?1")
    public List<District> findDistrictByProvince(Integer id);

}