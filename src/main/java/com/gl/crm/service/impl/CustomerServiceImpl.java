package com.gl.crm.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gl.crm.dao.CustomerDAO;
import com.gl.crm.service.CustomerService;
import com.gl.crm.entity.Customer;;

@Service
public class CustomerServiceImpl implements CustomerService{
	 @Autowired
	    private CustomerDAO customerDAO;

	    @Override
	    @Transactional
	    public List <Customer> getCustomers() {
	        return customerDAO.getCustomers();
	    }

	    @Override
	    @Transactional
	    public void saveCustomer(Customer theCustomer) {
	        customerDAO.saveCustomer(theCustomer);
	    }

	    @Override
	    @Transactional
	    public Customer getCustomer(int theId) {
	        return customerDAO.getCustomer(theId);
	    }

	    @Override
	    @Transactional
	    public void deleteCustomer(int theId) {
	        customerDAO.deleteCustomer(theId);
	    }
}
