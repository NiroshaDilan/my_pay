package com.example.mypay;

import com.example.mypay.model.User;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

@SpringBootApplication
@EnableScheduling
public class MyPayApplication {

	public static void main(String[] args) {
		SpringApplication.run(MyPayApplication.class, args);

	}
}
