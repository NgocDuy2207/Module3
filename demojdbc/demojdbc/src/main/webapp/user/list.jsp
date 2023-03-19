<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 19/3/2023
  Time: 8:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<html>
<head>
    <title>User Management Application</title>
</head>
<body>


    <h1>User Management</h1>
    <h2>
      <a href="/users?action=create">Add New User</a>
    </h2>

    <div align="center">
      <table border="1" cellpadding="5">
        <caption><h2>List of Users</h2></caption>
        <tr>
          <th>ID</th>
          <th>Name</th>
          <th>Email</th>
          <th>Country</th>
          <th>Actions</th>
        </tr>
        <c:forEach var="s" items="${listUser}">
          <tr>

<%--            <td><c:out value="${s.id}"/></td>--%>
<%--            <td><c:out value="${s.name}"/></td>--%>
<%--            <td><c:out value="${s.email}"/></td>--%>
<%--            <td><c:out value="${s.country}"/></td>--%>
                <td>${s.id}</td>
                <td>${s.name}</td>
                <td>${s.email}</td>
                <td>${s.country}</td>
            <td>
              <a href="/users?action=edit&id=${s.id}">Edit</a>
              <a href="/users?action=delete&id=${s.id}">Delete</a>
            </td>
          </tr>
        </c:forEach>
      </table>
    </div>

</body>
</html>
