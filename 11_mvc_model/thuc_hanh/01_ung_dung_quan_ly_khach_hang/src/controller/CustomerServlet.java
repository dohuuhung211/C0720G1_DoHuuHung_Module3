package controller;

import model.Customer;
import service.CustomerService;
import service.CustomerServiceImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CustomerServlet", urlPatterns = "/home")
public class CustomerServlet extends HttpServlet {
    private CustomerServiceImpl customerService = new CustomerServiceImpl();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String acction = request.getParameter("action");
        if (acction == null){
            acction = " ";
        }
        switch (acction) {
            case "create":
                addNewCustomer(request,response);
                break;
            case "edit":
                saveCustomer(request, response);
                break;
            default:
                getAllCustomer(request, response);
        }
    }

    private void addNewCustomer(HttpServletRequest request, HttpServletResponse response) {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
//        List<Customer> customerList = customerService.getAllCustomer();

        Customer customer = new Customer(name, email, address);
        customerService.create(customer);
        getAllCustomer(request,response);
    }

    private void saveCustomer(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        Customer customer = new Customer(id, name, email, address);
        customerService.editCustomer(id, customer);

        getAllCustomer(request,response);

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
                deleteCustomer(request, response);
                break;
            case "create":
                break;
            case "edit":
                editPage(request, response);
                break;
            default:
                getAllCustomer(request, response);
        }
    }

    private void editPage(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        Customer customer = customerService.findById(id);
        System.out.println(customer);
        request.setAttribute("customer", customer);
        RequestDispatcher dispatcher = request.getRequestDispatcher("edit.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void deleteCustomer(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        customerService.deleteCustomer(id);
        try {
            response.sendRedirect("/home");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void getAllCustomer(HttpServletRequest request, HttpServletResponse response) {
        List<Customer> customerList = customerService.getAllCustomer();
        request.setAttribute("customerList", customerList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}
