package service;

import dao.StudentDAO;
import dao.StudentDAOImpl;
import model.Student;

import java.util.List;

public class StudentServiceImpl implements StudentService{
    StudentDAO studentDAO = new StudentDAOImpl();
    @Override
    public void createStudent(Student student) {
        studentDAO.createStudent(student);
    }

    @Override
    public List<Student> getAllStudent() {
        return studentDAO.getAllStudent();
    }

    @Override
    public void editInfoStudent(int id, Student student) {
        studentDAO.editInfoStudent(id, student);
    }

    @Override
    public void deleteStudentById(int id) {
        studentDAO.deleteStudentById(id);
    }

    @Override
    public Student findStudentById(int id) {
        return studentDAO.findStudentById(id);
    }

    @Override
    public List<Student> searchStudentByName(String name) {
        return studentDAO.searchStudentByName(name);
    }
}
