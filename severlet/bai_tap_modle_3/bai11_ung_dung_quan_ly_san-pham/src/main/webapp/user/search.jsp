<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 16/3/2023
  Time: 10:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Search Product</title>
</head>
<body>

<h1>Product can search</h1>
    <form>
      <table>
        <tr> <p>Search : <input type="text" name="searchName">
          <input type="submit" value="Search" name="action"></p></tr>
      </table>

      </form>
    <h3>Product Search</h3>
      <table>
        <tr>
          <th>ID</th>
          <th>nameProduct</th>
          <th>priceProduct</th>
          <th>describeOfProduct</th>
          <th>producerOfProduct</th>
        </tr>

        <c:forEach items="${search}" var="s">
          <tr>
            <th>${s.id}</th>
            <th>${s.nameProduct}</th>
            <th>${s.priceProduct}</th>
            <th>${s.describeOfProduct}</th>
            <th>${s.producerOfProduct}</th>
          </tr>
        </c:forEach>
      </table>

</body>
</html>
