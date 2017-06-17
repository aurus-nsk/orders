package com.orders.web;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
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
    public String add(Model model) {
		List<Person> persons = personService.findAll();
		//model.addAttribute("orderForm", new Order());
		List<Order> orders = orderService.getLastOrders(0,10);
	    model.addAttribute("orders", orders);
		model.addAttribute("persons", persons);
        return "order/add";
    }
	
	@RequestMapping(value = "/orders/add", method = RequestMethod.POST)
	public String add(@RequestBody final Order orderForm, BindingResult bindingResult, Model model) {
	    Long personId = orderForm.getPerson().getId();
	    Person person = personService.findOne(personId);
	    orderForm.setPerson(person);
	    orderService.save(orderForm);
	    
	    List<Order> orders = orderService.getLastOrders(0,10);
	    model.addAttribute("orders", orders);
	    
        return "order/table";
    }
	
	//classic form
	/*@RequestMapping(value = "/orders/add", method = RequestMethod.POST)
    public String create(@ModelAttribute("orderForm") Order orderForm, BindingResult bindingResult, Model model) {
		orderService.save(orderForm);
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		return "redirect:/orders";
	}*/

	/*
	@RequestMapping(value = "/orders/addByAjax", method = RequestMethod.GET)
	public String addByAjaxForm(Model model) {
		List<Person> persons = personService.findAll();
		model.addAttribute("persons", persons);
		return "order/addByAjax";
	}*/
	
	//return json of Order
	/*@RequestMapping(value = "/order/{id}", method = RequestMethod.GET)
    public @ResponseBody Order get(@PathVariable Long id) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    String username = auth.getName();
	    Person person = personService.findByUsername(username);
	    List<Order> orders = orderService.findByPerson(person);
        return orders.get(0);
    }*/
}