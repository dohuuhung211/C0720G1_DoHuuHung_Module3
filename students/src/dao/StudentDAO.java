package dao;

import model.Student;

import java.util.List;

public interface StudentDAO {
    void createStudent(Student student);
    List<Student> getAllStudent();
    void editInfoStudent(int id, Student student);
    void deleteStudentById(int id);
    Student findStudentById(int id);
    List<Student> searchStudentByName(String name);
}
