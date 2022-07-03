package com.gl.crm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gl.crm.entity.Customer;
import com.gl.crm.service.CustomerService;

@Controller
public class WelcomeController {
	
	  @Autowired
	    private CustomerService customerService;

	@RequestMapping("/")
	public String welcomeMessage(Model theModel) {
		 List < Customer > theCustomers = customerService.getCustomers();
	        theModel.addAttribute("customers", theCustomers);
	        return "list-customers";
	}
}
