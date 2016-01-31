package com.store.domain.repository.impl;

import com.store.domain.Customer;
import com.store.domain.repository.CustomerRepository;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by tomaszowczarczyk on 29.01.2016.
 */

@Repository
public class InMemoryCustomerRepository implements CustomerRepository {

    private List<Customer> listOfCustomers = new ArrayList<Customer>();

    public InMemoryCustomerRepository(){

        Customer jan = new Customer(1,"Jan","Warszawa",0);
        Customer iwan = new Customer(2,"Iwan","Poznan",0);
        Customer bozena = new Customer(3,"Bozena","Gdansk",0);
        Customer irena = new Customer(4,"Irena","Sopot",0);
        Customer basia = new Customer(5,"Basia","Gdynia",0);
        Customer kasia = new Customer(6,"Kasia","Plock",0);

        listOfCustomers.add(jan);
        listOfCustomers.add(iwan);
        listOfCustomers.add(bozena);
        listOfCustomers.add(irena);
        listOfCustomers.add(basia);
        listOfCustomers.add(kasia);
    }

    public List<Customer> getAllCustomers(){
        return listOfCustomers;
    }
}
