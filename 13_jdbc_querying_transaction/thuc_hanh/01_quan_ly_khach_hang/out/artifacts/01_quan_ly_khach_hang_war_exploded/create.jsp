<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 11/6/2020
  Time: 4:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Title</title>--%>
<%--    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">--%>
<%--</head>--%>
<%--<body>--%>
<%--<form method="post" action="/index?action=create">--%>
<%--    <div class="form-group">--%>
<%--        <label>Name: </label>--%>
<%--        <input type="text" class="form-control" placeholder="Input name" name="name">--%>
<%--    </div>--%>
<%--    <div class="form-group">--%>
<%--        <label>Email:</label>--%>
<%--        <input type="email" class="form-control" aria-describedby="emailHelp" placeholder="Input email" name="email">--%>
<%--    </div>--%>
<%--    <div class="form-group">--%>
<%--        <label>Country:</label>--%>
<%--        <input type="text" class="form-control" placeholder="Input country" name="country">--%>
<%--    </div>--%>
<%--    <button type="submit" class="btn btn-primary" name="create">Submit</button>--%>
<%--</form>--%>
<%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>--%>
<%--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>--%>
<%--</body>--%>
<%--</html>--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User Management Application</title>
</head>
<body>
<center>
    <h1>User Management</h1>
    <h2>
        <a href="users?action=users">List All Users</a>
    </h2>
</center>
<div align="center">
    <form method="post">
        <table border="1" cellpadding="5">
            <caption>
                <h2>Add New User</h2>
            </caption>
            <tr>
                <th>User Name:</th>
                <td>
                    <input type="text" name="name" id="name" size="45"/>
                </td>
            </tr>
            <tr>
                <th>User Email:</th>
                <td>
                    <input type="text" name="email" id="email" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Country:</th>
                <td>
                    <input type="text" name="country" id="country" size="15"/>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Save"/>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
