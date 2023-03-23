<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 23/3/2023
  Time: 10:40 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
    <link rel="stylesheet" href="webapp/Style_home.css">
</head>
<body>
    <div class="logo">
      <img  class="logo-img" src="https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Twitter-logo.svg/2491px-Twitter-logo.svg.png">
      <p>LOGO</p>
      <P id="h4">Nguyen Ngoc Duy</P>
    </div>
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
      <div class="container">
        <a class="navbar-brand" href="#">Home</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="#">Employee</a>
            </li>
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="#">Customer</a>
            </li>

            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="#">Service</a>
            </li>
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="#">Contract</a>
            </li>
          </ul>
          <form class="d-flex" role="search">
            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success" type="submit">Search</button>
          </form>
        </div>
      </div>
    </nav>
    <div class="wrapper">
      <div class="left">
        <h3>Item One</h3>
        <h3>Item Tow</h3>
        <h3>Item Three</h3>

      </div>
      <div class="right">
        <h4>Body</h4>
      </div>
    </div>

</body>
</html>
