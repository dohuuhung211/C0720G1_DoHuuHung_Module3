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
    <title>Title</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>
<form method="post" action="/home?action=create">
    <div class="form-group">
        <label>Ten: </label>
        <input type="text" class="form-control" placeholder="Nhap ten" name="name">
    </div>
    <div class="form-group">
        <label>Email:</label>
        <input type="email" class="form-control" aria-describedby="emailHelp" placeholder="Nhap email" name="email">
    </div>
    <div class="form-group">
        <label>Dia chi:</label>
        <input type="text" class="form-control" placeholder="Nhap dia chi" name="address">
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
</form>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</body>
</html>
