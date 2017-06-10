package com.orders.web;

import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.orders.domain.Person;
import com.orders.domain.Role;
import com.orders.service.PersonService;
import com.orders.service.SecurityService;

@Controller
public class PersonController {
	/*
	@Autowired
	private OrderRepository orderRepository;
	@Autowired
	private PersonRepository personRepository;
	*/
	@Autowired
    private SecurityService securityService;
	@Autowired
    private PersonService personService;
    private static final Logger log = LoggerFactory.getLogger(PersonController.class);

	@RequestMapping(value = "/registration", method = RequestMethod.GET)
    public String registration(Model model) {
        model.addAttribute("personForm", new Person());

        return "registration";
    }

    @RequestMapping(value = "/registration", method = RequestMethod.POST)
    public String registration(@ModelAttribute("personForm") Person personForm, BindingResult bindingResult, Model model) {
        /*
    	userValidator.validate(userForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "registration";
        }
         */
    	if(personForm.getUsername().equals("admin")) {
    		personForm.setRole(Role.ROLE_ADMIN);
    	} else {
    		personForm.setRole(Role.ROLE_USER);
    	}
    	
    	personForm.setDateCreate(new Date());
        personService.save(personForm);
        securityService.autologin(personForm.getUsername(), personForm.getPassword());
        
        return "/index";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(Model model, String error, String logout) {
        if (error != null)
            model.addAttribute("error", "Your username and password is invalid.");

        if (logout != null)
            model.addAttribute("message", "You have been logged out successfully.");

        return "login";
    }
	
	@ExceptionHandler(value = Exception.class)  
    public String exceptionHandler(Exception e){  
        return e.getMessage();  
    } 
}