package com.example.demotest;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@SpringBootApplication
public class DemotestApplication {

	@RequestMapping("/test")
	public String index(){
		return "Hello Spring Boot";
	}

	public static void main(String[] args) {
		SpringApplication.run(DemotestApplication.class, args);
	}
}
