<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 10/3/2023
  Time: 11:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
      table{
        border: 1px;
        background-color: antiquewhite;
        color: chocolate;
      }
    </style>
    <title>Hiễn thị</title>
</head>
<body>
  <table style="border: 1px"  >
    <tr>
      <td>Product Description</td><td></td>
      <td> <%= request.getParameter("Product_Description")%></td>
    </tr>
    <tr>
      <td>Discount Amount</td><td></td>
      <td><%= request.getAttribute("Discount_Amount")%></td>
    </tr>
    <tr>
      <td>Discount Price</td><td></td>
      <td><%= request.getAttribute("Discount_Price")%></td>
    </tr>
  </table>

</body>
</html>
