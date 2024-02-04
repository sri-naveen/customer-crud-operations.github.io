package com.customer.dao;

import java.util.List;

import com.customer.model.Customer;

public interface CustomerDao {
	
	public int addCustomer(Customer c);
	
	public int deleteCustomer(int id);
	
	public int deleteCustomer(Customer c);
	
	public int updateCustomer(Customer c);
	
	public Customer getCustomer(int id);
	
	public List<Customer> getAllCustomers();

}
