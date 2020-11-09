package controller;

import model.Student;
import service.StudentServiceImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "StudentServlet", urlPatterns = "/student")
public class StudentServlet extends HttpServlet {
    private StudentServiceImpl studentService = new StudentServiceImpl();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");

        if (action == null) {
            action = "";
        }

        switch (action) {
            case "create":
                createStudent(request,response);
                break;
            case "edit":
                editStudent(request,response);
                break;
            case "search":
                searchStudentByName(request,response);
                break;
            default:
                getAllStudent(request,response);
        }
    }

    private void searchStudentByName(HttpServletRequest request, HttpServletResponse response) {
        String name = request.getParameter("name");
        request.setAttribute("studentList", studentService.searchStudentByName(name));
        RequestDispatcher dispatcher = request.getRequestDispatcher("list.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");

        if (action == null) {
            action = "";
        }

        switch (action) {
            case "delete":
                deleteStudent(request,response);
                break;
            case "edit":
                editPage(request,response);
                break;
            default:
                getAllStudent(request,response);
        }
    }
    private void editStudent(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String birthday = request.getParameter("birthday");
        String address = request.getParameter("address");
        Student student = new Student(id, name, birthday, address);
        studentService.editInfoStudent(id, student);
        getAllStudent(request,response);
    }
    private void editPage(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        Student student = studentService.findStudentById(id);
        request.setAttribute("student", student);
        RequestDispatcher dispatcher = request.getRequestDispatcher("edit.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void deleteStudent(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        studentService.deleteStudentById(id);
        try {
            response.sendRedirect("/student");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void createStudent(HttpServletRequest request, HttpServletResponse response) {
        String name = request.getParameter("name");
        String birthday = request.getParameter("birthday");
        String address = request.getParameter("address");
        Student student = new Student(name, birthday, address);
        studentService.createStudent(student);
        getAllStudent(request,response);
    }

    private void getAllStudent(HttpServletRequest request, HttpServletResponse response) {
        List<Student> studentList = studentService.getAllStudent();
        request.setAttribute("studentList", studentList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("list.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
