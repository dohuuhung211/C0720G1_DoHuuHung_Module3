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
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body>
<form action="/student?action=edit" method="post">
    <label>ID</label>
    <input type="text" name="id" value="<c:out value="${student.id}"/>" readonly>
    <label>Name</label>
    <input type="text" name="name" value="<c:out value="${student.name}"/>" placeholder="Input name">
    <label>Date Of Birth</label>
    <input type="text" name="birthday" value="<c:out value="${student.birthday}"/>" placeholder="Input date of birth">
    <label>Address</label>
    <input type="text" name="address" value="<c:out value="${student.address}"/>" placeholder="Input address">
    <input type="submit" value="Edit" class="btn btn-secondary">
    </button>
</form>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</body>
</html>
