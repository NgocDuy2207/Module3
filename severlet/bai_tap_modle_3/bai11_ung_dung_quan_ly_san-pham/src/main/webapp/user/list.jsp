<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 15/3/2023
  Time: 7:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        table{
            border: 1px solid black;
            background-color: aliceblue;
        }
    </style>
    <title>List Sản Phầm</title>
</head>
<body>
    <h1>List Product</h1>
    <a href="/list.jsp?action=create">Create new Product</a>
    <table>
        <tr>
            <th>ID</th>
            <th>nameProduct</th>
            <th>priceProduct</th>
            <th>describeOfProduct</th>
            <th>producerOfProduct</th>
            <th>Delete</th>
            <th>Update</th>
        </tr>

        <c:forEach items="${products}" var="s">
        <tr>
            <th>${s.id}</th>
            <th>${s.nameProduct}</th>
            <th>${s.priceProduct}</th>
            <th>${s.describeOfProduct}</th>
            <th>${s.producerOfProduct}</th>
            <th><a href="/list.jsp?action=delete&id=${s.id}">Delete</a></th>
            <th><a href="/list.jsp?action=update&id=${s.id}">update</a></th>
        </tr>
        </c:forEach>
    </table>
    <a href="/list.jsp?action=search">Search Product</a>









</body>
</html>
