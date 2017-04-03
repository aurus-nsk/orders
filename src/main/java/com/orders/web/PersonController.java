package com.orders.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.orders.domain.Person;
import com.orders.repository.OrderRepository;
import com.orders.repository.PersonRepository;

@RestController
public class PersonController {
	
	@Autowired
	private OrderRepository orderRepository;
	@Autowired
	private PersonRepository personRepository;
    
	@RequestMapping(value="/persons", method=RequestMethod.GET)
    public String getPersons() {
    	Iterable<Person> persons = personRepository.findAll();
    	String result = "";
    	for(Person person : persons) {
    		result+=person.toString();
    	}
        return result;
    }
	
	@ExceptionHandler(value = Exception.class)  
    public String exceptionHandler(Exception e){  
        return e.getMessage();  
    } 
}