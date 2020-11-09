<%@ page import="model.Customer" %><%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 11/4/2020
  Time: 10:51 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title>$Title$</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  </head>
  <body>
  <h2>Danh Sach San Pham</h2>
  <table class="table table-striped">
    <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Ten san pham</th>
      <th scope="col">Email</th>
      <th scope="col">Dia chi</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="customer" items="${customerList}">
      <tr>
        <td><c:out value="${customer.id}"/></td>
        <td><c:out value="${customer.name}"/></td>
        <td><c:out value="${customer.email}"/></td>
        <td><c:out value="${customer.address}"/></td>
        <td>
          <a href="/home?action=edit&id=${customer.id}" class="btn btn-warning" data-toggle="modal" data-target="#modelEdit">Sua</a>
<%--          <a href="/home?action=delete&id=${customer.id}" class="btn btn-danger">Xoa</a>--%>
          <button type="button" class="btn btn-primary ml-7" onclick="onDel(<c:out value="${customer.id}"/>)"
                  data-toggle="modal" data-target="#modelDelete">Xoa</button>
        </td>
      </tr>


      <!-- Modal -->
      <div class="modal fade" id="modelEdit" tabindex="-1" role="dialog" aria-labelledby="modelTitleId"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title">Modal title</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <form method="post" action="/home">
              <input type="hidden" name="action" value="edit">
              <div class="modal-body">
                <form>
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
                  <button type="button" value="cancel" class="btn btn-success"></button>
                </form>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                <button type="button" class="btn btn-primary">Luu</button>
              </div>
            </form>
          </div>
        </div>
      </div>
      <!-- Modal -->
      <div class="modal fade" id="modelDelete" tabindex="-1" role="dialog" aria-labelledby="modelTitleId"
           aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title">Modal title</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <form>
              <input type="hidden" name="action" value="delete">
              <input type="hidden" name="id" id="modalId">
              <div class="modal-body">
                Ban co chac muon xoa?
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                <button type="submit" class="btn btn-primary">Ok</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </c:forEach>
    <a href="/create.jsp" class="btn btn-primary">Them khach hang</a>
    </tbody>
  </table>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script>
    function onDel(id) {
      document.getElementById("modalId").value = id;
    }

  </script>
  </body>
</html>
