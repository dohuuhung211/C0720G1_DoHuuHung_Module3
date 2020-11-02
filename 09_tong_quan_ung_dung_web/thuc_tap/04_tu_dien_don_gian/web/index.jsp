<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 11/2/2020
  Time: 5:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Simple Dictionary</title>
  </head>
  <body>
  <h2>Vietnamese Dictionary</h2>
  <form method="post" action="/translate">
    <input type="text" name="txtSearch" placeholder="Enter your word: "/>
    <input type = "submit" id="submit" value="Search"/>
  </form>
  </body>
</html>
