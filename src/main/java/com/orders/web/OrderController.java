package com.orders.web;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.orders.domain.Order;
import com.orders.domain.Person;
import com.orders.service.OrderService;
import com.orders.service.PersonService;
import com.orders.service.SecurityService;

@Controller
@Transactional
@PreAuthorize("isAuthenticated()")
public class OrderController {

	@Autowired
    private SecurityService securityService;
	@Autowired
    private PersonService personService;
	@Autowired
    private OrderService orderService;
    
	@RequestMapping(value = "/orders", method = RequestMethod.GET)
    public String orders(Model model) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    String username = auth.getName();
	    //TODO: get orders by one SELECT
	    Person person = personService.findByUsername(username);
	    List<Order> orders = orderService.findByPerson(person);
	    model.addAttribute("orders", orders);
        return "order/orders";
    }
	
	@RequestMapping(value = "/orders/add", method = RequestMethod.GET)
    public String create(Model model) {
		List<Person> persons = personService.findAll();
		model.addAttribute("orderForm", new Order());
		model.addAttribute("persons", persons);
        return "order/add";
    }
	
	@RequestMapping(value = "/orders/add", method = RequestMethod.POST)
    public String create(@ModelAttribute("orderForm") Order orderForm, BindingResult bindingResult, Model model) {
		orderService.save(orderForm);
        return "order/orders";
    }
}