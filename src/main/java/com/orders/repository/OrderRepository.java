package com.orders.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.orders.domain.Order;
import com.orders.domain.Person;
@Repository
public interface OrderRepository extends CrudRepository<Order, Long>{
	List<Order> findByPerson(Person person);
}