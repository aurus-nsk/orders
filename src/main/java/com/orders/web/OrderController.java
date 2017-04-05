package com.orders.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.orders.domain.Person;
import com.orders.service.OrderService;
import com.orders.service.PersonService;
import com.orders.service.SecurityService;

@Controller
public class OrderController {

	@Autowired
    private SecurityService securityService;
	@Autowired
    private PersonService personService;
	@Autowired
    private OrderService orderService;
    
	@RequestMapping(value = "/orders", method = RequestMethod.GET)
    public String registration(Model model) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    String username = auth.getName();
        model.addAttribute("param", username);

        return "default";
    }
}