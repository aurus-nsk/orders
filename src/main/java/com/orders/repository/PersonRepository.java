package com.orders.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.orders.domain.Person;
@Repository
public interface PersonRepository extends CrudRepository<Person, Long> {
	List<Person> findById(Long id);
}
