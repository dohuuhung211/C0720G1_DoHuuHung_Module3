<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 11/4/2020
  Time: 10:56 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Edit Page</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>
    <form method="post" action="/home">
        <div class="form-group">
            <label>ID</label>
            <input type="text" value="<c:out value="${customer.id}"/>" readonly class="form-control" name="id">
        </div>
        <div class="form-group">
            <label>Ten</label>
            <input type="text" value="<c:out value="${customer.name}"/>" class="form-control" name="name">
        </div>
        <div class="form-group">
            <label>Email</label>
            <input type="email" value="<c:out value="${customer.email}"/>" class="form-control" aria-describedby="emailHelp" name="email">
        </div>
        <div class="form-group">
            <label>Dia chi</label>
            <input type="text" value="<c:out value="${customer.address}"/>" class="form-control" name="address">
        </div>
        <input type="hidden" name="action" value="edit">
        <input type="submit" value="Edit" class="btn btn-primary">
    </form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</body>
</html>
