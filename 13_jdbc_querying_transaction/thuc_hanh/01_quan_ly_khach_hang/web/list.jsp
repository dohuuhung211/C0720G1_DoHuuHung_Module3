<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 11/6/2020
  Time: 4:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--  <title>$Title$</title>--%>
<%--  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">--%>
<%--</head>--%>
<%--<body>--%>
<%--<h2>User List</h2>--%>
<%--<table class="table table-striped">--%>
<%--  <thead class="thead-dark">--%>
<%--  <tr>--%>
<%--    <th scope="col">ID</th>--%>
<%--    <th scope="col">User</th>--%>
<%--    <th scope="col">Email</th>--%>
<%--    <th scope="col">Country</th>--%>
<%--  </tr>--%>
<%--  </thead>--%>
<%--  <tbody>--%>
<%--  <c:forEach var="user" items="${listUser}">--%>
<%--    <tr>--%>
<%--      <td><c:out value="${user.id}"/></td>--%>
<%--      <td><c:out value="${user.name}"/></td>--%>
<%--      <td><c:out value="${user.email}"/></td>--%>
<%--      <td><c:out value="${user.country}"/></td>--%>
<%--      <td>--%>
<%--        <button type="button" class="btn btn-warning" onclick="onEdit(${user.id},'${user.name}','${user.email}','${user.country}')" data-toggle="modal" data-target="#modalEdit">Edit</button>--%>
<%--        <button type="button" class="btn btn-primary ml-7" onclick="onDel(${user.id})" data-toggle="modal" data-target="#modalDelete">Delete</button>--%>

<%--      </td>--%>
<%--    </tr>--%>
<%--    &lt;%&ndash;    modal&ndash;%&gt;--%>
<%--  </c:forEach>--%>
<%--  <div class="modal fade" id="modalEdit" tabindex="-1" role="dialog" aria-labelledby="modelTitleId"--%>
<%--       aria-hidden="true">--%>
<%--    <div class="modal-dialog" role="document">--%>
<%--      <div class="modal-content">--%>
<%--        <div class="modal-header">--%>
<%--          <h5 class="modal-title">Modal title</h5>--%>
<%--          <button type="button" class="close" data-dismiss="modal" aria-label="Close">--%>
<%--            <span aria-hidden="true">&times;</span>--%>
<%--          </button>--%>
<%--        </div>--%>
<%--        <form method="post" action="/index">--%>
<%--          &lt;%&ndash;          <input type="hidden" name="id" id="modalEditId">&ndash;%&gt;--%>
<%--          <input type="hidden" name="action" value="edit">--%>
<%--          <div class="modal-body">--%>
<%--            <form>--%>
<%--              <div class="form-group">--%>
<%--                <label>ID</label>--%>
<%--                <input id="modalEditId" type="text" value="<c:out value="${user.id}"/>" readonly class="form-control" name="id">--%>
<%--              </div>--%>
<%--              <div class="form-group">--%>
<%--                <label>Name</label>--%>
<%--                <input id="modalEditName" type="text" value="<c:out value="${user.name}"/>" class="form-control" name="name">--%>
<%--              </div>--%>
<%--              <div class="form-group">--%>
<%--                <label>Email</label>--%>
<%--                <input id="modalEditEmail" type="email" value="<c:out value="${user.email}"/>" class="form-control" aria-describedby="emailHelp" name="email">--%>
<%--              </div>--%>
<%--              <div class="form-group">--%>
<%--                <label>Country</label>--%>
<%--                <input id="modalEditCountry" type="text" value="<c:out value="${user.country}"/>" class="form-control" name="country">--%>
<%--              </div>--%>
<%--              <input type="hidden" name="action" value="edit">--%>
<%--              <div class="modal-footer">--%>
<%--                <input type="submit" value="Edit" class="btn btn-primary">--%>
<%--                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>--%>
<%--              </div>--%>
<%--            </form>--%>
<%--          </div>--%>
<%--        </form>--%>
<%--      </div>--%>
<%--    </div>--%>
<%--  </div>--%>
<%--  <div class="modal fade" id="modalDelete" tabindex="-1" role="dialog" aria-labelledby="modelTitleId"--%>
<%--       aria-hidden="true">--%>
<%--    <div class="modal-dialog" role="document">--%>
<%--      <div class="modal-content">--%>
<%--        <div class="modal-header">--%>
<%--          <h5 class="modal-title">Modal title</h5>--%>
<%--          <button type="button" class="close" data-dismiss="modal" aria-label="Close">--%>
<%--            <span aria-hidden="true">&times;</span>--%>
<%--          </button>--%>
<%--        </div>--%>
<%--        <form method="get">--%>
<%--          <input type="hidden" name="id" id="modalIdDel">--%>
<%--          <div class="modal-body">--%>
<%--            Are you sure delete this user?--%>
<%--          </div>--%>
<%--          <div class="modal-footer">--%>
<%--            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>--%>
<%--            <button type="submit" name="action" value="delete" class="btn btn-primary">Yes</button>--%>
<%--          </div>--%>
<%--        </form>--%>
<%--      </div>--%>
<%--    </div>--%>
<%--  </div>--%>
<%--  <a href="/create.jsp" class="btn btn-primary">Add New User</a>--%>
<%--  <form action="/index" method="post">--%>
<%--    <input type="hidden" name="action" value = "search">--%>
<%--    <div></div>--%>
<%--    <input type="text" placeholder="Input name" name="name" class="form-control" style="width: 150px; float: right; margin: 0 150px 0 10px">--%>
<%--    <button class="btn btn-primary" type="submit" style="float: right; height: 34px; width: 50px"><span class="glyphicon glyphicon-search"></span></button>--%>
<%--  </form>--%>
<%--  </tbody>--%>
<%--</table>--%>

<%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>--%>
<%--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>--%>
<%--<script>--%>
<%--  function onDel(id) {--%>
<%--    console.log(id);--%>
<%--    document.getElementById("modalIdDel").value = id;--%>
<%--  }--%>
<%--  function onEdit(id, name, email, country) {--%>
<%--    console.log(id);--%>
<%--    document.getElementById("modalEditId").value = id;--%>
<%--    document.getElementById("modalEditName").value = name;--%>
<%--    document.getElementById("modalEditEmail").value = email;--%>
<%--    document.getElementById("modalEditCountry").value = country;--%>
<%--  }--%>
<%--</script>--%>
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
    <a href="/users?action=create">Add New User</a>
  </h2>
</center>
<div align="center">
  <table border="1" cellpadding="5">
    <caption><h2>List of Users</h2></caption>
    <tr>
      <th>ID</th>
      <th>Name</th>
      <th>Email</th>
      <th>Country</th>
      <th>Actions</th>
    </tr>
    <c:forEach var="user" items="${listUser}">
      <tr>
        <td><c:out value="${user.id}"/></td>
        <td><c:out value="${user.name}"/></td>
        <td><c:out value="${user.email}"/></td>
        <td><c:out value="${user.country}"/></td>
        <td>
          <a href="/users?action=edit&id=${user.id}">Edit</a>
          <a href="/users?action=delete&id=${user.id}">Delete</a>
        </td>
      </tr>
    </c:forEach>
  </table>
</div>
</body>
</html>

