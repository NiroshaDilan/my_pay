package com.example.mypay.resource;

import com.example.mypay.model.Province;
import com.example.mypay.model.User;
import com.example.mypay.service.ProvinceService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("api")
public class ProvinceRestApiController {

    private static final Logger LOGGER = LoggerFactory.getLogger(ProvinceRestApiController.class);

    private ProvinceService provinceService;

    public ProvinceRestApiController(ProvinceService provinceService) {
        this.provinceService = provinceService;
    }

    //    -------------------- Retrieve All Provinces --------------------

//    @CrossOrigin(origins = "http://localhost:4200")
    @GetMapping("/provinces")
    public ResponseEntity<List<Province>> listAllProvinces() {
        List<Province> provinceList = provinceService.findAllProvinces();
        if(provinceList.isEmpty()) {
            LOGGER.info("Empty Province ........................");
            return new ResponseEntity(HttpStatus.NO_CONTENT);
        }
        LOGGER.info("Provinces returned ........................" + provinceList);
        return new ResponseEntity(provinceList, HttpStatus.OK);
    }
}
