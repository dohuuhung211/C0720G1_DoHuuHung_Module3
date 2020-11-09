package repository;

import model.Customer;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CustomerRepositoryImpl implements CustomerRepository {
    private String jdbcURL = "jdbc:mysql://localhost:3306/demo1?useSSL=false";
    private String jdbcUsername = "root";
    private String jdbcPassword = "sjnkhung";

    private static final String INSERT_CUSTOMER_SQL = "INSERT INTO customer" + "  (name, email, address) VALUES " +
            " (?, ?, ?);";

    private static final String SELECT_CUSTOMER_BY_ID = "select id,name,email,address from customer where id =?";
    private static final String SELECT_ALL_CUSTOMER = "select * from customer";
    private static final String DELETE_CUSTOMER_SQL = "delete from customer where id = ?;";
    private static final String UPDATE_CUSTOMER_SQL = "update customer set name = ?,email= ?, address =? where id = ?;";

    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return connection;
    }


    @Override
    public void create(Customer customer) {
        System.out.println(INSERT_CUSTOMER_SQL);
        // try-with-resource statement will auto close the connection.
        try (Connection connection = getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(INSERT_CUSTOMER_SQL)) {
            preparedStatement.setString(1, customer.getName());
            preparedStatement.setString(2, customer.getEmail());
            preparedStatement.setString(3, customer.getAddress());
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }

    @Override
    public List<Customer> getAllCustomer() {
        // using try-with-resources to avoid closing resources (boiler plate code)
        List<Customer> customers = new ArrayList<>();
        // Step 1: Establishing a Connection
        try (Connection connection = getConnection();

             // Step 2:Create a statement using connection object
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_CUSTOMER)) {
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String email = rs.getString("email");
                String address = rs.getString("address");
                customers.add(new Customer(id, name, email, address));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return customers;
    }

    @Override
    public void saveCustomer(Customer customer) {

    }

    @Override
    public void deleteCustomer(int id) throws SQLException {
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(DELETE_CUSTOMER_SQL)) {
            statement.setInt(1, id);
            statement.executeUpdate();
        }
    }

    @Override
    public void editCustomer(int id, Customer customer) {
        try (Connection connection = getConnection(); PreparedStatement statement = connection.prepareStatement(UPDATE_CUSTOMER_SQL);) {
            statement.setString(1, customer.getName());
            statement.setString(2, customer.getEmail());
            statement.setString(3, customer.getAddress());
            statement.setInt(4, customer.getId());
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public Customer findById(int id) {
        Customer customers = null;
        // Step 1: Establishing a Connection
        try (Connection connection = getConnection();
             // Step 2:Create a statement using connection object
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_CUSTOMER_BY_ID)) {
            preparedStatement.setInt(1, id);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();
            System.out.println(rs);
            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                String name = rs.getString("name");
                String email = rs.getString("email");
                String address = rs.getString("address");
                customers = new Customer(id, name, email, address);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return customers;
    }
    private void printSQLException(SQLException ex) {
        for (Throwable e : ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}
