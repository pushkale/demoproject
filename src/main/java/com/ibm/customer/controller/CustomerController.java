package com.ibm.customer.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.ibm.customer.model.CustomerModel;
import com.ibm.customer.repository.CustomerRepository;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

@RestController
@Api("customer")
@RequestMapping("/api/customer")
public class CustomerController  {
	

	/*@RequestMapping(method = RequestMethod.GET, value = "/api/getCustomer")
	public String getCustomer() {
		return "Swagger Hello World";
	}*/
	
	@Autowired
    CustomerRepository customerRepository;

	@ApiOperation("Add new customer")
    @RequestMapping(method = RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE)
    public void create(@RequestBody CustomerModel customer) {
    	customerRepository.save(customer);
    }

	@ApiOperation("Read a customer")
    @RequestMapping(value = "/{id}") 
    public CustomerModel read(@PathVariable String id) {
        return customerRepository.findOne(id);
    }

	
	@ApiOperation("Update a customer")
    @RequestMapping(method = RequestMethod.PUT, consumes = MediaType.APPLICATION_JSON_VALUE)
    public void update(@RequestBody CustomerModel customer) {
    	customerRepository.save(customer);
    }

	@ApiOperation("Delete a customer")
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE) 
    public void delete(@PathVariable String id) {
    	customerRepository.delete(id);

	}
}
