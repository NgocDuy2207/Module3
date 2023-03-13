<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.example.bai10.Model.Customer" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 12/3/2023
  Time: 4:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> Hiển thị danh sách khách hàng</title>
    <style>
        table{
            border: 1px solid black;
            height: 300px;
            width: 600px;
        }
        #picture{
            width: 20px;
            height: 20px;
        }

    </style>
</head>
<body>
<a href="/CustomerServlet"></a>
    <h1>Danh Sach</h1>
    <table>
        <tr>
            <th>Tên</th>
            <th>Ngày Sinh</th>
            <th>Địa Chi</th>
            <th>Ảnh</th>
        </tr>
<%--    <c:forEach items="${customers}" var="s">--%>
<%--        <tr>--%>
<%--            <td>${s.name}</td>--%>
<%--            <td>${s.day}</td>--%>
<%--            <td>${s.address}</td>--%>

        </tr>

        <c:forEach items="${customers}" var="s">
        <tr >
            <td>${s.name} </td>
            <<td>${s.date} </td>
            <td>${s.address}</td>
            <td ><img id="picture" src="${s.picture}"> </td>
        </tr>
        </c:forEach>
    </table>


</body>
</html>
