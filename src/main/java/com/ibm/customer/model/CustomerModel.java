package com.ibm.customer.model;

import org.springframework.beans.factory.annotation.Required;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

import io.swagger.annotations.ApiModelProperty;

@Document(collection = "customerModel")
public class CustomerModel {

	@ApiModelProperty(notes = "Id of customer", required = true)
	@Id
    private String id;
	@ApiModelProperty(notes = "First Name of customer", required = true)
    private String firstName;
	@ApiModelProperty(notes = "Last Name of customer")
    private String lastName;
	@ApiModelProperty(notes = "Age of customer")
    private int age;
	
	public CustomerModel(int age, String fname, String id, String lname) {
		
		this.id = id;
		this.firstName = fname;
		this.lastName = lname;
		this.age = age;
	}
    

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }
    
    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    
}
