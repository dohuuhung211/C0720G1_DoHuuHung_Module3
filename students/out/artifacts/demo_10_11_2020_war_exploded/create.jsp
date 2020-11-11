<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 11/9/2020
  Time: 8:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form method="post" action="/student?action=create">
        <label>Name</label>
        <input type="text" name="name" placeholder="Input name">
        <label>Date Of Birth</label>
        <input type="text" name="birthday" placeholder="Input date of birth">
        <label>Address</label>
        <input type="text" name="address" placeholder="Input address">
        <input type="submit">
    </form>
</body>
</html>
