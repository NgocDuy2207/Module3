<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 10/3/2023
  Time: 10:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Discount Calculator</title>
</head>
<body>
    <h2>Ứng dụng Product Discount Calculator</h2>
    <form action="/create" method="post">
        <table>
            <tr>
                <td>Product Description</td>
                <td><input type="text" name="Product_Description"></td>
            </tr>
            <tr>
                <td>List Price</td>
                <td><input type="text" name="List_Price"></td>
            </tr>
            <tr>
                <td>Discount Percent</td>
                <td><input type="text" name="Discount_Percent"></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="Register"></td>
            </tr>
        </table>

    </form>

</body>
</html>
