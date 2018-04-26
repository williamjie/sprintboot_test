package com.example.demotest;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


@RestController
@SpringBootApplication
public class DemotestApplication {

	protected static Logger logger=LoggerFactory.getLogger(DemotestApplication.class);

	@RequestMapping("/test")
	public String index(){
		logger.debug("访问hello");
		return "Hello Spring Boot";
	}

	public static void main(String[] args) {
		SpringApplication.run(DemotestApplication.class, args);
	}
}
