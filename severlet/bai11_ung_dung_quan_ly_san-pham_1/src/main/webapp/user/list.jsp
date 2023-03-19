<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        .search{
            margin-bottom: 20px;
        }
    </style>
</head>
<body>

    <a href="/products?action=create">Create new Product</a>
    <div class="search">
        <form action="/products" method="post">
        <table>
            <tr> <p>Search : <input type="text" name="searchName">
                <input type="submit" value="search" name="action"></p></tr>
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
    </div>
    <h1>List Product</h1>
    <div class="list">
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
                <th><a href="/products?action=delete&id=${s.id}"><button class="ui-button">DELETE</button></a></th>
                <th><a href="/products?action=update&id=${s.id}"><button class="ui-button">UPDATE</button></a></th>
            </tr>
            </c:forEach>
        </table>
    </div>










</body>
</html>
