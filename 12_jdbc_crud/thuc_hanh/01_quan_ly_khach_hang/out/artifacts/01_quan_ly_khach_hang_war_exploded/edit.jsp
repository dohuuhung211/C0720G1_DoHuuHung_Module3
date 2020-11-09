<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 11/6/2020
  Time: 4:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
<head>
    <title>Edit Page</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>
<form method="post" action="/index">
    <div class="form-group">
        <label>ID</label>
        <input type="text" value="<c:out value="${user.id}"/>" readonly class="form-control" name="id">
    </div>
    <div class="form-group">
        <label>Name</label>
        <input type="text" value="<c:out value="${user.name}"/>" class="form-control" name="name">
    </div>
    <div class="form-group">
        <label>Email</label>
        <input type="email" value="<c:out value="${user.email}"/>" class="form-control" aria-describedby="emailHelp" placeholder="Input email" name="email">
    </div>
    <div class="form-group">
        <label>Country</label>
        <input type="text" value="<c:out value="${user.country}"/>" class="form-control" name="country">
    </div>
    <input type="hidden" name="action" value="edit">
    <input type="submit" value="Edit" class="btn btn-success">
</form>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</body>
</html>
