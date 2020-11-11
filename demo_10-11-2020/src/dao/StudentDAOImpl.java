package dao;

import model.Student;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class StudentDAOImpl implements StudentDAO {
    private String jdbcURL = "jdbc:mysql://localhost:3306/demo3?useSSL=false";
    private String jdbcUsername = "root";
    private String jdbcPassword = "sjnkhung";

    private static final String INSERT_STUDENTS_SQL = "INSERT INTO students" + "  (name, birthday, address) VALUES " +
            " (?, ?, ?);";

    private static final String SELECT_STUDENTS_BY_ID = "select id,name,birthday,address from students where id =?";
    private static final String SELECT_ALL_STUDENTS = "select * from students";
    private static final String DELETE_STUDENTS_SQL = "delete from studen" +
            "ts where id = ?;";
    private static final String UPDATE_STUDENTS_SQL = "update students set name = ?, birthday = ?, address =? where id = ?;";
    private static final String SEARCH_STUDENTS_BY_NAME = "select * from students where name like ?;";
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
    public void createStudent(Student student) {
        try(Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_STUDENTS_SQL)){
            preparedStatement.setString(1, student.getName());
            preparedStatement.setString(2, student.getBirthday());
            preparedStatement.setString(3, student.getAddress());
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Student> getAllStudent() {
        List<Student> students = new ArrayList<>();
        try(Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_STUDENTS)){
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()){
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String birthday = rs.getString("birthday");
                String address = rs.getString("address");
                students.add(new Student(id,name ,birthday, address));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return students;
    }

    @Override
    public void editInfoStudent(int id, Student student) {
        try(Connection connection = getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_STUDENTS_SQL)){
        preparedStatement.setString(1, student.getName());
        preparedStatement.setString(2, student.getBirthday());
        preparedStatement.setString(3, student.getAddress());
        preparedStatement.setInt(4, student.getId());
        preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void deleteStudentById(int id) {
        try(Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE_STUDENTS_SQL)){
            preparedStatement.setInt(1, id);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public Student findStudentById(int id) {
        Student students = null;
        try(Connection connection = getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(SELECT_STUDENTS_BY_ID)){
            preparedStatement.setInt(1, id);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()){
                String name = rs.getString("name");
                String birthday = rs.getString("birthday");
                String address = rs.getString("name");
                students = new Student(id, name, birthday, address);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return students;
    }

    @Override
    public List<Student> searchStudentByName(String name) {
        List<Student> students = new ArrayList<>();
        try(Connection connection = getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(SEARCH_STUDENTS_BY_NAME)){
        preparedStatement.setString(1, "%" + name + "%");
        ResultSet rs = preparedStatement.executeQuery();
        while (rs.next()){
            int id = rs.getInt("id");
            String name1 = rs.getString("name");
            String birthday = rs.getString("birthday");
            String address = rs.getString("address");
            students.add(new Student(id, name1, birthday, address));
        }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return students;
    }
}
