package com.store.domain.repository;

import com.store.domain.Customer;

import java.util.List;

/**
 * Created by tomaszowczarczyk on 29.01.2016.
 */
public interface CustomerRepository {

    List<Customer> getAllCustomers();
}
