<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 11/12/2020
  Time: 10:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
<head>
    <title>List Service</title>
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
        $('#tableService').dataTable({
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 6
        });
    });
</script>
<div style="text-align: center; margin-bottom: 10px">
    <h2>List Service</h2>
    <a href="/service/create.jsp" class="btn btn-success">Add new Service</a>
</div>
<table border="1" align="center" class="table table-hover" style="text-align: center" id="tableService">
    <thead class="thead-dark">
    <tr>
        <th scope="col">ID</th>
        <th scope="col">Name</th>
        <th scope="col">Service Area</th>
        <th scope="col">Service Cost</th>
        <th scope="col">Max People</th>
        <th scope="col">Standard Room</th>
        <th scope="col">Description</th>
        <th scope="col">Pool Area</th>
        <th scope="col">Number Of Floor</th>
        <th scope="col">Service Type</th>
        <th scope="col">Rent Type</th>
    </tr>
    </thead>
    <tbody class="thead-dark">
    <c:forEach var="service" items="${serviceList}">
        <tr>
            <td><c:out value="${service.serviceId}"/></td>
            <td><c:out value="${service.serviceName}"/></td>
            <td><c:out value="${service.serviceArea}"/></td>
            <td><c:out value="${service.serviceCost}"/></td>
            <td><c:out value="${service.serviceMaxPeople}"/></td>
            <td><c:out value="${service.standardRoom}"/></td>
            <td><c:out value="${service.description}"/></td>
            <td><c:out value="${service.poolArea}"/></td>
            <td><c:out value="${service.numbFloor}"/></td>
            <td><c:out value="${service.serviceType}"/></td>
            <td><c:out value="${service.rentType}"/></td>
        </tr>
    </c:forEach>
    <!-- Button trigger modal -->
    </tbody>
</table>
</body>
</html>
