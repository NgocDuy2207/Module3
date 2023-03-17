<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 15/3/2023
  Time: 6:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create</title>
</head>
<body>
    <H1>create product</H1>
    <form action="/list.jsp" method="post">
        <table>
            <tr>
                <th>create ID</th>
                <td><input type="text" name="id"></td>
            </tr>
            <tr>
                <th>create nameProduct: </th>
                <td><input type="text" name="nameProduct"></td>
            </tr>
            <tr>
                <th>create priceProduct: </th>
                <td><input type="text" name="priceProduct"></td>
            </tr>
            <tr>
                <th>create describeOfProduct: </th>
                <td><input type="text" name="describeOfProduct"></td>
            </tr>
            <tr>
                <th>create producerOfProduct: </th>
                <td><input type="text" name="producerOfProduct"></td>
            </tr>
            <tr>
                <td><input type="submit" value="submit"></td>
            </tr>

        </table>

        <input type="hidden" name="action" value="create">
    </form>



</body>
</html>
