package com.orders.repository;

import java.util.List;

import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.orders.domain.Order;
import com.orders.domain.Person;
@Repository
public interface OrderRepository extends CrudRepository<Order, Long>{
	List<Order> findByPerson(Person person);
	List<Order> findByPersonId(Integer personId);
	List<Order> findByPerson(Person person, Pageable limit);
	PageImpl<Order> findAll(Pageable limit);
}