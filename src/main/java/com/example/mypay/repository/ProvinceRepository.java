package com.example.mypay.repository;

import com.example.mypay.model.Province;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProvinceRepository extends JpaRepository<Province, Integer> {

//    Province findByProvince(String nameEn);
}
