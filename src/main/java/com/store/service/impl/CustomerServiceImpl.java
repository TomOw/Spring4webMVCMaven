package com.store.service.impl;

import com.store.domain.Customer;
import com.store.domain.repository.CustomerRepository;
import com.store.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by tomaszowczarczyk on 29.01.2016.
 */
@Service
public class CustomerServiceImpl implements CustomerService {
    @Autowired
    CustomerRepository customerRepository;

    public List<Customer> getAllCustomers(){
        return customerRepository.getAllCustomers();
    }
}
