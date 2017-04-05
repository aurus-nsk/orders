package com.orders.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.orders.domain.Person;
import com.orders.repository.PersonRepository;

@Service
public class PersonServiceImpl implements PersonService {
	@Autowired
    private PersonRepository personRepository;
    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    @Override
    public void save(Person person) {
    	System.out.println(person);
    	person.setPassword(bCryptPasswordEncoder.encode(person.getPassword()));
    	//person.setRole(person.getRole());
    	personRepository.save(person);
    }

    @Override
    public Person findByUsername(String username) {
        return personRepository.findByUsername(username);
    }
}