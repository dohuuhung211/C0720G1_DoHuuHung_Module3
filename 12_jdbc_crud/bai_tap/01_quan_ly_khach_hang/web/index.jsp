<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 11/6/2020
  Time: 4:10 PM
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
<h2>User List</h2>
<table class="table table-striped">
  <thead>
  <tr>
    <th scope="col">ID</th>
    <th scope="col">User</th>
    <th scope="col">Email</th>
    <th scope="col">Country</th>
  </tr>
  </thead>
  <tbody>
  <c:forEach var="user" items="${userList}">
    <tr>
      <td><c:out value="${user.id}"/></td>
      <td><c:out value="${user.name}"/></td>
      <td><c:out value="${user.email}"/></td>
      <td><c:out value="${user.country}"/></td>
      <td>
        <a class="btn btn-warning" href="/index?action=edit&id=${user.id}">Edit</a>
        <a class="btn btn-danger" href="/index?action=delete&id=${user.id}">Delete</a>
      </td>
    </tr>
  </c:forEach>
  <a href="/create.jsp" class="btn btn-primary">Them User</a>
  <form action="/index" method="post">
    <input type="hidden" name="action" value = "search">
    <input type="text" placeholder="Input name" name="name" >
    <button class="btn btn-primary" type="submit">Tim kiem user theo ten</button>
  </form>
  </tbody>
</table>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</body>
</html>
