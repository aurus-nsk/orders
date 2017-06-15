package com.orders.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.orders.domain.Person;
@Repository
public interface PersonRepository extends CrudRepository<Person, Long> {
	Person findByUsername(String username);
	List<Person> findAll();
	Person findOne(Long id);
}