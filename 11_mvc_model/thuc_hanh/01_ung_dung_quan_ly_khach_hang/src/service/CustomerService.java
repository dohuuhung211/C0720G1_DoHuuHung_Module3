package service;

import model.Customer;

import java.util.List;

public interface CustomerService {
    void create(Customer customer);
    List<Customer> getAllCustomer();
    void saveCustomer(Customer customer);
    void deleteCustomer(int id);
    void editCustomer(int id, Customer customer);
    Customer findById(int id);
}
