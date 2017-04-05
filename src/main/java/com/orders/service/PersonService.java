package com.orders.service;

import com.orders.domain.Person;

public interface PersonService {
	void save(Person person);
    Person findByUsername(String username);
}