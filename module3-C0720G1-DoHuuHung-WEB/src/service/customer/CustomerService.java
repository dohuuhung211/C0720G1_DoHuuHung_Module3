package service.customer;

import model.customer.Customer;

import java.util.List;

public interface CustomerService {
    void createCustomer(Customer customer);
    List<Customer> getAllCustomer();
    void editCustomer(Customer customer);
    void deleteCustomer(int id);
    Customer findById(int id);
    List<Customer> searchCustomerByName(String name);
}
