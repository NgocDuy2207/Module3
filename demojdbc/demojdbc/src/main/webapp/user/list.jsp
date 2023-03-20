<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 19/3/2023
  Time: 8:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>User Management Application</title>
    <style>
        .search{
            margin-left: 20px;
            border:1px solid black;
            width:20%;
        }
        .showList{
           margin-right: 20px;
            border:1px solid black;
            width: 50%;
        }
    </style>
</head>
<body>


    <h1>User Management</h1>
    <h2>
      <a href="/users?action=create">Add New User</a>
    </h2>
<%-- Search List of Users   --%>
    <div class="search">
        <form action="/users" method="post">
            <table>
                <h2>Search List of Users</h2>
                <tr>
                    Search : <input type="text" name="searchName">
                    <input type="submit" value="search" name="action">
                </tr>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Country</th>
                </tr>
                <c:forEach var="s" items="${listSearchName}">
                    <tr>
                        <th>${s.id}</th>
                        <th>${s.name}</th>
                        <th>${s.email}</th>
                        <th>${s.country}</th>
                    </tr>
                </c:forEach>
            </table>
        </form>
    </div>


<%--showList of User--%>
    <div class="showList">
      <table>
        <h2> List of Users</h2>
        <tr>
          <th>ID</th>
          <th>Name</th>
          <th>Email</th>
          <th>Country</th>
          <th>Actions</th>
        </tr>
        <c:forEach var="s" items="${listUser}">
          <tr>
                <th>${s.id}</th>
                <th>${s.name}</th>
                <th>${s.email}</th>
                <th>${s.country}</th>
            <td>
              <a href="/users?action=edit&id=${s.id}">Edit</a>
              <a href="/users?action=delete&id=${s.id}">Delete</a>
            </td>
          </tr>
        </c:forEach>
      </table>`
    </div>

</body>
</html>
