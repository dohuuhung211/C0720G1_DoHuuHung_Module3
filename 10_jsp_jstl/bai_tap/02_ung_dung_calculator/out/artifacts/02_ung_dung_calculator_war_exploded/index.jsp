<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 11/3/2020
  Time: 11:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
    <h1>Simple Calculator</h1>
    <form method="post" action="/index">
      <fieldset>
        <legend>Calculator</legend>
        <table>
          <tr>
            <td>Nhap so thu 1: </td>
            <td><input type="text" name="so-mot"></td>
          </tr>
          <tr>
            <td>Lua chon toan tu: </td>
            <td>
              <select name="toantu">
                <option value="+">Cong</option>
                <option value="-">Tru</option>
                <option value="*">Nhan</option>
                <option value="/">Chia</option>
              </select>
            </td>
          </tr>
          <tr>
            <td>Nhap so thu 2: </td>
            <td><input type="text" name="so-hai"></td>
          </tr>
          <tr>
            <td></td>
            <td>
              <input type="submit" value="Calculate">
            </td>
          </tr>
        </table>
      </fieldset>
    </form>
  </body>
</html>
