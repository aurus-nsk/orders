package com.orders.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.orders.domain.Order;
import com.orders.domain.Person;
import com.orders.repository.OrderRepository;

@Service
public class OrderService {
	@Autowired
    private OrderRepository orderRepository;
	
    public List<Order> findByPerson(Person person) {
    	return orderRepository.findByPerson(person);
    }
    
    public List<Order> findByPerson(Person person, Pageable limit) {
    	return orderRepository.findByPerson(person, limit);
    }

	public List<Order> findByPersonId(Integer personId) {
		return orderRepository.findByPersonId(personId);
	}
	
	public void save(Order order) {
		orderRepository.save(order);
	}

	public List<Order> findAll(Pageable limit) {
		return orderRepository.findAll(limit);
	}
}