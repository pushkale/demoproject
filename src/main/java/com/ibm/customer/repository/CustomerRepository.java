package com.ibm.customer.repository;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

import com.ibm.customer.model.CustomerModel;

@Repository
public interface CustomerRepository extends MongoRepository<CustomerModel, String> {

    public CustomerModel findOneByFirstName(String firstName);

}