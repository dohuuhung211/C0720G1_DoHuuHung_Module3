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
</head>
<body>
    <form method="post" action="/home?action=edit">
        <label>ID</label>
        <input type="text" value="<c:out value="${customer.id}"/>" readonly name="id">
        <label>Ten</label>
        <input type="text" value="<c:out value="${customer.name}"/>" name="name">
        <label>Email</label>
        <input type="text" value="<c:out value="${customer.email}"/>" name="email">
        <label>Dia chi</label>
        <input type="text" value="<c:out value="${customer.address}"/>" name="address">
        <input type="submit" value="Edit">
    </form>
</body>
</html>
