<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 11/11/2020
  Time: 3:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

    <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css"></script>
</head>
<body>
<script>
    $(document).ready(function () {
        $('#tableCustomer').dataTable({
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 6
        });
    });
</script>
<div style="text-align: center; margin-bottom: 10px">
    <h2>List Customers</h2>
    <a href="/customer/create.jsp" class="btn btn-success">Add new customer</a>
    <form action="/customer" method="post">
        <input type="text" placeholder="Input name" name="name" class="form-control" style="width: 150px; float: right; margin: 0 150px 0 10px">
        <button class="btn btn-primary" type="submit" style="float: right" name="action" value="search">
            Search
            <span class="glyphicon glyphicon-search"></span>
        </button>
    </form>
</div>
<table border="1" align="center" class="table table-hover" style="text-align: center" id="tableCustomer">
    <thead class="thead-dark">
    <tr>
        <th scope="col">ID</th>
        <th scope="col">Name</th>
        <th scope="col">Date Of Birth</th>
        <th scope="col">Gender</th>
        <th scope="col">ID Card</th>
        <th scope="col">Phone Number</th>
        <th scope="col">Email</th>
        <th scope="col">Address</th>
        <th scope="col">Customer Type</th>
        <th scope="col">Action</th>
    </tr>
    </thead>
    <tbody class="thead-dark">
    <c:forEach var="customer" items="${customerList}">
        <tr>
            <td><c:out value="${customer.idCustomer}"/></td>
            <td><c:out value="${customer.customerName}"/></td>
            <td><c:out value="${customer.dateOfBirth}"/></td>
            <td><c:out value="${customer.gender}"/></td>
            <td><c:out value="${customer.customerIdCard}"/></td>
            <td><c:out value="${customer.customerPhoneNumb}"/></td>
            <td><c:out value="${customer.customerEmail}"/></td>
            <td><c:out value="${customer.customerAddress}"/></td>
            <td><c:out value="${customer.typeCustomer}"/></td>
            <td>
<%--                <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#modalEdit"--%>
<%--                        onclick="onEdit('${student.id}','${student.name}','${student.birthday}','${student.address}')">Edit</button>--%>
<%--                <button type="button" class="btn btn-dark" data-toggle="modal" data-target="#modalDelete"--%>
<%--                        onclick="onDel(${student.id})">Delete</button>--%>

                <a href="/customer?action=edit&idCustomer=${customer.idCustomer}" class="btn btn-secondary">Edit</a>
                <button type="button" class="btn btn-dark" data-toggle="modal" data-target="#modalDelete" onclick="onDel(${customer.idCustomer})">Delete</button>
            </td>
        </tr>
    </c:forEach>
    <!-- Button trigger modal -->

    <!-- Modal -->
    <div class="modal fade" id="modalDelete" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Confirm delete</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form method="get">
                    <input type="hidden" name="idCustomer" id="modalIdDel">
                    <div class="modal-body">
                        Are you sure want to delete this Customer?
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                        <button type="submit" class="btn btn-primary" name="action" value="delete">Yes</button>
                    </div>
                </form>

            </div>
        </div>
    </div>
    </tbody>
</table>

<script>
    function onDel(idCustomer) {
        document.getElementById("modalIdDel").value = idCustomer;
    }
</script>
</body>
</html>
