<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 16/3/2023
  Time: 10:24 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update dữ liệu</title>
</head>
<body>
    <h1>Update Product</h1>
    <form action="/list.jsp" method="post">
    <table>
        <tr>
            <th>Update ID</th>
            <td><input type="text" name="updateId"></td>
        </tr>
        <tr>
            <th>Update nameProduct: </th>
            <td><input type="text" name="updateNameProduct"></td>
        </tr>
        <tr>
            <th>Update priceProduct: </th>
            <td><input type="text" name="updatePriceProduct"></td>
        </tr>
        <tr>
            <th>Update describeOfProduct: </th>
            <td><input type="text" name="updateDescribeOfProduct"></td>
        </tr>
        <tr>
            <th>Update producerOfProduct: </th>
            <td><input type="text" name="updateProducerOfProduct"></td>
        </tr>
        <tr>
            <td><input type="submit" value="submit"></td>
        </tr>
    </table>
    <input type="hidden" name="action" value="update">
    </form>
</body>
</html>
