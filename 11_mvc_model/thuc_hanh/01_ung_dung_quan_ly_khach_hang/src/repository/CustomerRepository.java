package repository;

import model.Customer;

import java.sql.SQLException;
import java.util.List;

public interface CustomerRepository {
    void create(Customer customer);
    List<Customer> getAllCustomer();
    void saveCustomer(Customer customer);
    void deleteCustomer(int id) throws SQLException;
    void editCustomer(int id, Customer customer);
    Customer findById(int id);
}
