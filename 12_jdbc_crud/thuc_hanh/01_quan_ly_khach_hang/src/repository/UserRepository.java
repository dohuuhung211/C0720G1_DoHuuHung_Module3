package repository;

import model.User;

import java.sql.SQLException;
import java.util.List;

public interface UserRepository {
    void createUser(User user);
    void editUser(int id, User user);
    List<User> getAllUser();
    void deleteUserById(int id);
    User findUserById(int id);
    List<User> searchUserByName(String name);
    public User getUserById(int id);
    public void insertUserStore(User user) throws SQLException;
}
