package com.example.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface Dao extends JpaRepository<Person, Long>{

    List<Person> findByName(String name);
}