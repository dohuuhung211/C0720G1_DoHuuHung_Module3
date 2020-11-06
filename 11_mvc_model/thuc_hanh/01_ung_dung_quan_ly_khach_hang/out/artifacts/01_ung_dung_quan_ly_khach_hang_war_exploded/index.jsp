<%@ page import="model.Customer" %><%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 11/4/2020
  Time: 10:51 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title>$Title$</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  </head>
  <body>
  <h2>Danh Sach San Pham</h2>
  <table class="table table-striped">
    <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Ten san pham</th>
      <th scope="col">Email</th>
      <th scope="col">Dia chi</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="customer" items="${customerList}">
      <tr>
        <td><c:out value="${customer.id}"/></td>
        <td><c:out value="${customer.name}"/></td>
        <td><c:out value="${customer.email}"/></td>
        <td><c:out value="${customer.address}"/></td>
        <td>
          <a href="/home?action=edit&id=${customer.id}" class="btn btn-warning">Sua</a>
          <a href="/home?action=delete&id=${customer.id}" class="btn btn-danger">Xoa</a>
        </td>
      </tr>
    </c:forEach>
    <a href="/create.jsp" class="btn btn-primary">Them khach hang</a>
    </tbody>
  </table>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  </body>
</html>
