package com.example.mypay.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.client.RestTemplate;

/**
 * @Project my-pay
 * @Author DILAN on 3/31/2018
 */
@Configuration
public class ConnectorConfig {

    @Bean
    public RestTemplate restTemplate() {
        return new RestTemplate();
    }
}
