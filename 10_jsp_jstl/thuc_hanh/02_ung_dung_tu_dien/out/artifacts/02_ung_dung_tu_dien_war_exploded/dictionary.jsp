<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 11/3/2020
  Time: 4:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        Map<String, String> dictionary = new HashMap<>();
    %>
    <%
        dictionary.put("hello", "Xin chào");
        dictionary.put("how", "Thế nào");
        dictionary.put("book", "Quyển vở");
        dictionary.put("computer", "Máy tính");
        String search = request.getParameter("txtSearch");
        String result = dictionary.get(search);
        if (result != null){
            out.print("Tu vung: " + search + "<br>");
            out.print("Ket qua: " + result);
        } else {
            out.print("Khong tim thay");
        }
    %>
</body>
</html>
