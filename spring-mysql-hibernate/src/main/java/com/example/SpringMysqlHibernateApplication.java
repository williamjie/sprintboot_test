package com.example;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.dao.Dao;
import com.example.dao.Person;


@SpringBootApplication
public class SpringMysqlHibernateApplication {
	public static void main(String[] args) {
		SpringApplication.run(SpringMysqlHibernateApplication.class, args);
	}
}
