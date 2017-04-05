package com.orders.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.orders.domain.Order;
import com.orders.domain.Person;
import com.orders.repository.OrderRepository;

@Service
public class OrderService {
	@Autowired
    private OrderRepository orderRepository;
	
    List<Order> findByPerson(Person person) {
    	return orderRepository.findByPerson(person);
    }
}