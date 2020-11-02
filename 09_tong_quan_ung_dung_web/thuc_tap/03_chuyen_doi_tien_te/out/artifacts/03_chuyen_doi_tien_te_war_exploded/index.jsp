<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 11/2/2020
  Time: 4:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <style>
      form{
        height: 300px;
        width: 200px;
      }
      form input{
        margin: 10px 0 10px 20px;
      }
    </style>
  </head>
  <body>
    <h1>Currency Converter</h1>
    <form method="post" action="/convert">
      <label>Rate:</label><br>
      <input type="text" name="rate" placeholder="RATE" value="24000"><br>
      <label>USD:</label><br>
      <input type="text" name="usd" placeholder="USD" value="0"><br>
      <input type="submit" id="submit" value="Converter">
    </form>
  </body>
</html>
