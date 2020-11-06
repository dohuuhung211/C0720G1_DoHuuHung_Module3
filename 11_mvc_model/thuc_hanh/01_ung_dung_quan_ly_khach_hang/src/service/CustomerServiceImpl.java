package service;

import model.Customer;
import repository.CustomerRepository;
import repository.CustomerRepositoryImpl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CustomerServiceImpl implements CustomerService{
    private CustomerRepository customerRepository = new CustomerRepositoryImpl();

    @Override
    public void create(Customer customer) {
    }

    @Override
    public List<Customer> getAllCustomer() {
        return customerRepository.getAllCustomer();
    }

    @Override
    public void saveCustomer(Customer customer) {

    }

    @Override
    public void deleteCustomer(int id) {
        try {
            customerRepository.deleteCustomer(id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void editCustomer(int id, Customer customer) {
        customerRepository.editCustomer(id, customer);
    }

    @Override
    public Customer findById(int id) {
        return customerRepository.findById(id);
    }
}
