<%@ page import="java.util.List" %>
<%@ page import="Customers.Customers" %>
<%@ page import="CustomerDao.CustomerDao" %>
<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 11/3/2020
  Time: 4:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
  <head>
    <title>$Title$</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  </head>
  <body>

  <%
    List<Customers> customersList = CustomerDao.getAllCustomer();
    request.setAttribute("listCustomer", customersList);
  %>
  <h2>Danh Sach Khach Hang</h2>
  <table class="table table-striped">
    <thead>
    <tr>
      <th scope="col">Ten</th>
      <th scope="col">Ngay sinh</th>
      <th scope="col">Dia chi</th>
      <th scope="col">Avatar</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="customer" items="${listCustomer}">
    <tr>
      <td><c:out value="${customer.name}"/></td>
      <td><c:out value="${customer.birthday}"/></td>
      <td><c:out value="${customer.address}"/></td>
      <td>
        <img class="img-thumbnail" style="width: 100px" src="<c:out value="${customer.avatar}"/>">
      </td>
    </tr>
    </c:forEach>
    </tbody>
  </table>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  </body>
</html>