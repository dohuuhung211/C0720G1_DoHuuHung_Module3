<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 11/2/2020
  Time: 9:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <style>
      form{
        border: 2px dashed black;
        border-radius: 10px;
        height: 250px;
        width: 350px;
      }
      label{
        margin: 10px 0 0 10px;
      }
      form input{
        display: block;
        margin: 5px 0 0 10px;
      }
    </style>
  </head>
  <body>
    <form method="post" action="/display-discount">
      <label>Mo ta san pham</label>
      <input type="text" name="description" placeholder="mo ta"><br>
      <label>Gia niem yet</label>
      <input type="text" name="list-price" placeholder="gia niem yet"><br>
      <label>Ti le chiet khau</label>
      <input type="text" name="discount-person" placeholder="chiet khau"><br>
      <input type="submit" id="submit" value="Ket qua">
    </form>
  </body>
</html>
