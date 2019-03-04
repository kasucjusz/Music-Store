package com.emusicstore.service;


import com.emusicstore.model.Customer;

import java.util.List;

public interface CustomerService {

    void addCustomer(Customer customer);

    Customer getCustomerById(int customerId);

    Customer getCustomerByUsername(String username);

    List<Customer> getAllCustomers();



}
