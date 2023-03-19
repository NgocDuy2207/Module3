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
        h1 {
            margin: auto;
        }
        table{
            border: 3px solid black;
            background-color: aliceblue;
            width: 100%;
        }
        table > tr {
            color: cornsilk;
        }
        a{
            color: red; text-decoration: underline; font-weight: bold;
        }
        button{

        }
    </style>
    <title>List Sản Phầm</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <h1>List Product</h1>
    <a href="/list.jsp?action=create">Create new Product</a>

    <a href="/list.jsp?action=search">Search Product</a>
    <table >
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
            <th><a href="/list.jsp?action=delete&id=${s.id}"><button class="ui-button">Delete</button></a></th>
            <th><a href="/list.jsp?action=update&id=${s.id}"><button class="ui-button">Update</button></a></th>
        </tr>
        </c:forEach>
    </table>










</body>
</html>
