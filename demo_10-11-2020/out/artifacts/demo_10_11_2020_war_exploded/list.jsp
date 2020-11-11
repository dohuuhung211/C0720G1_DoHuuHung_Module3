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
    <div align="center">
        <h2>
            List Student
        </h2>
        <a href="/create.jsp" style="text-align: center">Add New Student</a>
    </div>
    <table border="1" align="center">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Date Of Birth</th>
            <th>Address</th>
        </tr>
        <c:forEach var="student" items="${studentList}">
        <tr>
            <td><c:out value="${student.id}"/></td>
            <td><c:out value="${student.name}"/></td>
            <td><c:out value="${student.birthday}"/></td>
            <td><c:out value="${student.address}"/></td>
            <td>
                <a href="/student?action=edit&id=${student.id}">Edit</a>
                <a href="/student?action=delete&id=${student.id}">Delete</a>
            </td>
        </tr>
        </c:forEach>
    </table>
    <form method="post" action="/student" style="text-align: center">
        <input type="hidden">
        <input type="text" placeholder="Input name" name="name">
        <button type="submit" name="action" value="search">Tim Kiem</button>
    </form>
</body>
</html>
