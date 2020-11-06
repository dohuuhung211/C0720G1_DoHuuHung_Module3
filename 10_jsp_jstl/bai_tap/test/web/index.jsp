<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 11/4/2020
  Time: 9:06 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
    <h1>Calculator</h1>
    <form method="post" action="/index">
      <fieldset>
        <legend>Calculator</legend>
        <table>
          <tr>
            <td>First operand:</td>
            <td>
              <input type="text" name="so-mot" value="0">
            </td>
          </tr>
          <tr>
            <td>Operator:</td>
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
            <td>Second operand:</td>
            <td>
              <input type="text" name="so-hai" value="0">
            </td>
          </tr>
          <tr>
            <td></td>
            <td>
              <input type="submit" value="Result">
            </td>
          </tr>
        </table>
      </fieldset>
    </form>
  </body>
</html>
