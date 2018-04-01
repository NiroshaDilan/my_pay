package com.example.mypay.resource;

import com.example.mypay.model.District;
import com.example.mypay.service.DistrictService;
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
public class DistrictRestApiController {

    private static final Logger LOGGER = LoggerFactory.getLogger(DistrictRestApiController.class);

    private DistrictService districtService;

    public DistrictRestApiController(DistrictService districtService) {
        this.districtService = districtService;
    }

    @GetMapping("/districts")
    public ResponseEntity<District> listAllDistricts() {
        List<District> districtList = districtService.findAllDistricts();
        if(districtList.isEmpty()) {
            LOGGER.info("Empty Province ........................");
            return new ResponseEntity(HttpStatus.NO_CONTENT);
        }
        LOGGER.info("Provinces returned ........................" + districtList);
        return new ResponseEntity(districtList, HttpStatus.OK);
    }

    @GetMapping("/districts/{id}")
    public ResponseEntity<District> listAllDistrictByProvinceId(@PathVariable("id") Integer id) {
        LOGGER.info("district " +  id);
        List<District> districtList = districtService.findDistrictByProvince(id);
        if(districtList.isEmpty()) {
            LOGGER.info("Empty Districts ...................");
            return new ResponseEntity(HttpStatus.NO_CONTENT);
        }
        LOGGER.info("Districts Returned......" + districtList);
        return new ResponseEntity(districtList, HttpStatus.OK);
    }
}
