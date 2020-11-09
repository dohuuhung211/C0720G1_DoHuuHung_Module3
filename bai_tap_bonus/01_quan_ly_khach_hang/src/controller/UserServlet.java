package controller;

import model.User;
import service.UserService;
import service.UserServiceImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "UserServlet", urlPatterns = "/index")
public class UserServlet extends HttpServlet {
    private UserService userService = new UserServiceImpl();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null){
            action = " ";
        }
        switch (action){
            case "create":
                createUser(request, response);
                break;
            case "edit":
                editUser(request,response);
                break;
            case "search":
                searchUserByName(request,response);
            default:
                getAllUser(request, response);
        }
    }

    private void searchUserByName(HttpServletRequest request, HttpServletResponse response) {
        String name = request.getParameter("name");
        System.out.println(name);
        request.setAttribute("userList", userService.searchUserByName(name));
        RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
        try {
            rd.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String acction = request.getParameter("action");
        if (acction == null){
            acction = " ";
        }
        switch (acction) {
            case "delete":
                deleteUserById(request, response);
                break;
            case "create":
                createUser(request,response);
                break;
            case "edit":
                editPage(request, response);
                try {
                    showEditForm(request,response);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;
            default:
                getAllUser(request, response);
        }
    }

    private void deleteUserById(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        userService.deleteUserById(id);
        try {
            response.sendRedirect("/index");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void createUser(HttpServletRequest request, HttpServletResponse response){
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String country = request.getParameter("country");
        User user = new User(name, email, country);
        userService.createUser(user);
        getAllUser(request, response);
    }
    private void editUser(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String country = request.getParameter("country");
        User user = new User(id, name, email, country);
        userService.editUser(id, user);

        getAllUser(request,response);

    }
    private void editPage(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        User user = userService.findUserById(id);
        System.out.println(user);
        request.setAttribute("user", user);
        RequestDispatcher dispatcher = request.getRequestDispatcher("edit.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        //User existingUser = userDAO.selectUser(id);
        User existingUser = userService.getUserById(id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("edit.jsp");
        request.setAttribute("user", existingUser);
        dispatcher.forward(request, response);

    }
    private void getAllUser(HttpServletRequest request, HttpServletResponse response){
        List<User> userList = userService.getAllUser();
        request.setAttribute("userList", userList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
