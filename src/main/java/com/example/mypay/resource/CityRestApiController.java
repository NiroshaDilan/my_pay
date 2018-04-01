package com.example.mypay.resource;

import com.example.mypay.model.City;
import com.example.mypay.service.CityService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("api")
public class CityRestApiController {

    private static final Logger LOGGER = LoggerFactory.getLogger(CityRestApiController.class);

    private CityService cityService;

    public CityRestApiController(CityService cityService) {
        this.cityService = cityService;
    }

    //    -------------------- Retrieve All Cities --------------------

    @GetMapping("/cities")
    public ResponseEntity<List<City>> listAllProvinces() {
        List<City> cityList = cityService.findAllCities();
        if(cityList.isEmpty()) {
            LOGGER.info("Empty Province ........................");
            return new ResponseEntity(HttpStatus.NO_CONTENT);
        }
        LOGGER.info("Provinces returned ........................");
        return new ResponseEntity(cityList, HttpStatus.OK);
    }

    @GetMapping("/cities/{id}")
    public ResponseEntity<City> listAllDistrictByProvinceId(@PathVariable("id") Integer id) {
        LOGGER.info("city " +  id);
        List<City> cityList = cityService.findCitiesByDistrict(id);
        if(cityList.isEmpty()) {
            LOGGER.info("Empty Cities ...................");
            return new ResponseEntity(HttpStatus.NO_CONTENT);
        }
        LOGGER.info("Cities Returned......" + cityList);
        return new ResponseEntity(cityList, HttpStatus.OK);
    }
}
