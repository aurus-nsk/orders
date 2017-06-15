package com.orders.service;

import java.util.List;

import com.orders.domain.Person;

public interface PersonService {
	void save(Person person);
	Person findOne(Long id);
    Person findByUsername(String username);
    List<Person> findAll();
}