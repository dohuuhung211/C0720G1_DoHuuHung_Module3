<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 11/13/2020
  Time: 9:41 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
<head>
    <title>Contract List</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

    <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css"></script>
    <style>
        #tableContract{
            position: fixed;
            margin-top: 100px;
        }
    </style>
</head>
<body>
<script>
    $(document).ready(function () {
        $('#tableContract').dataTable({
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 6
        });
    });
</script>
<%--    <button class="btn btn-active" onclick="onCreate('${contract.contractId}','${contract.dateStart}','${contract.dateEnd},, +--%>
<%--            ,'${contract.deposit}','${contract.total}','${contract.customerId}','${contract.employeeId}','${contract.serviceId}')"--%>
    <div align="center" style="margin-bottom: 20px">
        <h2>List Contracts</h2>
        <button class="btn btn-secondary" data-toggle="modal" data-target="#modelCreate">Create new Contract</button>
        <br>
    </div>

    <table align="center" style="text-align: center" class="table table-hover" id="tableContract">
        <thead class="thead-dark">
        <tr>
            <th>ID Contract</th>
            <th>Start Date</th>
            <th>End date</th>
            <th>Deposit</th>
            <th>Total</th>
            <th>Customer Name</th>
            <th>Employee Name</th>
            <th>Service Name</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="contract" items="${contractList}">
            <tr>
                <td><c:out value="${contract.contractId}"/></td>
                <td><c:out value="${contract.dateStart}"/></td>
                <td><c:out value="${contract.dateEnd}"/></td>
                <td><c:out value="${contract.deposit}"/></td>
                <td><c:out value="${contract.total}"/></td>
                <td><c:out value="${contract.customerId}"/></td>
                <td><c:out value="${contract.employeeId}"/></td>
                <td><c:out value="${contract.serviceId}"/></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <!-- Modal -->
    <div class="modal fade" id="modelCreate" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Modal title</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form method="post" action="/contract">
                        <div class="form-group">
                            <label>ID Contract:</label>
                            <input type="text" class="form-control" id="mdConId" placeholder="Input ID" name="id">
                        </div>
                        <div class="form-group">
                            <label>Start Date:</label>
                            <input type="text" class="form-control" id="mdConStartDate" placeholder="Input start date" name="dateStart">
                        </div>
                        <div class="form-group">
                            <label>End date:</label>
                            <input type="text" class="form-control" id="mdConEndDate" placeholder="Input end date" name="dateEnd">
                        </div>
                        <div class="form-group">
                            <label>Deposit: </label>
                            <input type="text" class="form-control" id="mdConDepo" placeholder="Input deposit" name="deposit">
                        </div>
                        <div class="form-group">
                            <label>Total:</label>
                            <input type="text" class="form-control" id="mdConCost" placeholder="Input total" name="cost">
                        </div>
                        <div class="form-group">
                            <label>Customer Name:</label>
                            <select class="form-control" name="customer">
                                <option value="1">Toan</option>
                                <option value="2">Ly</option>
                                <option value="3">Hoa</option>
                                <option value="4">Ong Dia</option>
                            </select>
<%--                            <input type="text" class="form-control" id="mdConCus" placeholder="Input customer name" name="customer">--%>
                        </div>
                        <div class="form-group">
                            <label>Employee Name:</label>
                            <input type="text" class="form-control" id="mdConEmp" placeholder="Input address" name="employee">
                        </div>
                        <div class="form-group">
                            <label>Service Name:</label>
                            <input type="text" class="form-control" id="mdConSer" placeholder="Input position" name="service">
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary" name="action" value="create">Create</button>
                        </div>
                    </form>
                </div>

            </div>
        </div>
    </div>
    <script>
        function onCreate(idContract, dateStart, dateEnd, ContractDepo, contractCost, contractCus, contractEmp, contractSer) {
            document.getElementById("mdConId").value = idContract;
            document.getElementById("mdConStartDate").value = dateStart;
            document.getElementById("mdConEndDate").value = dateEnd;
            document.getElementById("mdConDepo").value = ContractDepo;
            document.getElementById("mdConCost").value = contractCost;
            document.getElementById("mdConCus").value = contractCus;
            document.getElementById("mdConEmp").value = contractEmp;
            document.getElementById("mdConSer").value = contractSer;
        }
    </script>
</body>
</html>
