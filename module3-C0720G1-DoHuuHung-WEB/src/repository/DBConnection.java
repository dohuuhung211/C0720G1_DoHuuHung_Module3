package repository;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

    private static final String USER_NAME = "root";
    private static final String PASSWORD = "sjnkhung";
    private static final String HOST = "localhost";
    private static final String DATABASE = "case_study_jsp_and_servlet";
    private static final String PORT = "3306";

    private static Connection connection;
    private String useName;


    /**
     * Get connection object
     *
     * @return connection object
     */
    public static Connection getConnection() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            connection = DriverManager.getConnection("jdbc:mysql://" + HOST + ":" + PORT + "/" + DATABASE, USER_NAME, PASSWORD);

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return connection;
    }


    /**
     * Close connection
     */
    public static void close() {
        try {
            if (connection != null) {
                connection.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}

