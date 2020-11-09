package service;

import model.User;
import repository.UserRepository;
import repository.UserRepositoryImpl;

import java.sql.SQLException;
import java.util.List;

public class UserServiceImpl implements UserService{
    private UserRepository userRepository = new UserRepositoryImpl();
    @Override
    public void createUser(User user) {
        userRepository.createUser(user);
    }

    @Override
    public void editUser(int id, User user) {
        userRepository.editUser(id, user);
    }

    @Override
    public List<User> getAllUser() {
        return userRepository.getAllUser();
    }

    @Override
    public void deleteUserById(int id) {
        userRepository.deleteUserById(id);
    }

    @Override
    public User findUserById(int id) {
        return userRepository.findUserById(id);
    }

    @Override
    public List<User> searchUserByName(String name) {
        return userRepository.searchUserByName(name);
    }

    @Override
    public User getUserById(int id) {
        return userRepository.getUserById(id);
    }

    @Override
    public void insertUserStore(User user) throws SQLException {
        userRepository.insertUserStore(user);
    }
}
