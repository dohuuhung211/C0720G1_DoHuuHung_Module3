package service;

import model.User;

import java.util.List;

public interface UserService {
    void createUser(User user);
    void editUser(int id, User user);
    List<User> getAllUser();
    void deleteUserById(int id);
    User findUserById(int id);
    List<User> searchUserByName(String name);
}
