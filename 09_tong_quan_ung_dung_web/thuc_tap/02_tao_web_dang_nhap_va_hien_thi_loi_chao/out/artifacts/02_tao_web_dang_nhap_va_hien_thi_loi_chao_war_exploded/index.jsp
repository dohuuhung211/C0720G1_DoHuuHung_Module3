<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 11/2/2020
  Time: 4:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <style>
      .login{
        height: 180px;
        width: 230px;
        margin: 0;
        padding: 10px;
        border: 1px #ccc solid;
      }
      .login input{
        padding: 5px;
        margin: 5px 15px 0 0;
      }
    </style>
  </head>
  <body>
  <form method="post" action="/login">
    <div class="login">
      <h2>Login</h2>
      <input type="text" name="username" size="30" placeholder="username">
      <input type="password" name="password" size="30" placeholder="password">
      <input type="submit" value="Sign in">
    </div>
  </form>
  </body>
</html>
