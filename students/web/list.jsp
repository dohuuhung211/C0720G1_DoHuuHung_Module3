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
    <div align="center" style="margin-bottom: 10px">
        <h2>
            List Student
        </h2>
        <a href="/create.jsp" style="text-align: center" class="btn btn-dark">Add New Student</a>
    </div>
    <form method="post" action="/student" style="text-align: center">
        <div class="input-group input-group-lg">
            <div class="input-group-prepend">
                <button type="submit" name="action" value="search" class="btn btn-secondary">Search</button>
            </div>
            <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg" placeholder="Input name" name="name">
        </div>
    </form>
    <table border="1" align="center" class="table table-hover">
        <thead class="thead-dark">
            <tr>
                <th scope="col">ID</th>
                <th scope="col">Name</th>
                <th scope="col">Date Of Birth</th>
                <th scope="col">Address</th>
                <th scope="col"></th>
            </tr>
        </thead>
        <tbody class="thead-dark">
        <c:forEach var="student" items="${studentList}">
            <tr>
                <td><c:out value="${student.id}"/></td>
                <td><c:out value="${student.name}"/></td>
                <td><c:out value="${student.birthday}"/></td>
                <td><c:out value="${student.address}"/></td>
                <td>
                    <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#modalEdit"
                            onclick="onEdit('${student.id}','${student.name}','${student.birthday}','${student.address}')">Edit</button>
                    <button type="button" class="btn btn-dark" data-toggle="modal" data-target="#modalDelete"
                            onclick="onDel(${student.id})">Delete</button>
<%--                    <a href="/student?action=edit&id=${student.id}" class="btn btn-secondary">Edit</a>--%>
<%--                    <a href="/student?action=delete&id=${student.id}" data-toggle="modal" data-target="#modalDelete"--%>
<%--                       class="btn btn-dark">Delete</a>--%>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <!-- Button trigger modal -->
    <!-- Modal Edit-->
    <div class="modal fade" id="modalEdit" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Edit student</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form action="/student?action=edit" method="post" style="margin: 10px">
                    <div class="form-group">
                        <label>ID</label>
                        <input type="text" id="modalEditId" name="id" value="<c:out value="${student.id}"/>" class="form-control" readonly>
                    </div>
                    <div class="form-group">
                        <label>Name</label>
                        <input type="text" id="modalEditName" name="name" value="<c:out value="${student.name}"/>" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Date Of Birth</label>
                        <input type="text" id="modalEditBirthday" name="birthday" value="<c:out value="${student.birthday}"/>" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Address</label>
                        <input type="text" id="modalEditAddress" name="address" value="<c:out value="${student.address}"/>" class="form-control">
                    </div>
                    <input type="submit" value="Edit" class="btn btn-secondary">
                    </button>
                </form>
            </div>
        </div>
    </div>
    <!-- Modal Delete-->
    <div class="modal fade" id="modalDelete" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Confirm delete</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form method="get">
                    <input type="hidden" name="id" id="modalIdDel">
                    <div class="modal-body">
                        Are you sure want to delete this student?
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">No</button>
                        <button type="submit" class="btn btn-dark" name="action" value="delete">Yes</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    <script>
        function onDel(id) {
            console.log(id);
            document.getElementById("modalIdDel").value = id;
        }
        function onEdit(id, name, birthday, address) {
            document.getElementById("modalEditId").value = id;
            document.getElementById("modalEditName").value = name;
            document.getElementById("modalEditBirthday").value = birthday;
            document.getElementById("modalEditAddress").value = address;
        }
    </script>
</body>
</html>
