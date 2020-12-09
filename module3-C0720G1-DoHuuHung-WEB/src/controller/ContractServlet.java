package controller;

import model.contract.Contract;
import service.contract.ContractService;
import service.contract.ContractServiceImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ContractServlet",urlPatterns = "/contract")
public class ContractServlet extends HttpServlet {
    private ContractService contractService = new ContractServiceImpl();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");

        if (action == null) {
            action = "";
        }

        switch (action) {
            case "create":
                createContract(request,response);
                break;
            default:
                getAllContract(request,response);
        }
    }

    private void getAllContract(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Contract> contractList = contractService.getAllContract();
        request.setAttribute("contractList", contractList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/contract/list.jsp");
        dispatcher.forward(request,response);
    }

    private void createContract(HttpServletRequest request, HttpServletResponse response) {
        String id = request.getParameter("id");
        String dateStart = request.getParameter("dateStart");
        String dateEnd = request.getParameter("dateEnd");
        String deposit = request.getParameter("deposit");
        String cost = request.getParameter("cost");
        String customer = request.getParameter("customer");
        String employee = request.getParameter("employee");
        String service = request.getParameter("service");
        Contract contract = new Contract(id, dateStart, dateEnd, Double.parseDouble(deposit), Double.parseDouble(cost), customer, employee, service);
        contractService.createContract(contract);
        try {
            getAllContract(request,response);
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
            default:
                getAllContract(request,response);
        }
    }
}
