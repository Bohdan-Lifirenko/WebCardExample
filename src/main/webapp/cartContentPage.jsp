<%@ page import="com.example.webcardexample.Cart" %>
<%@ page import="java.io.IOException" %>
<%@ page import="com.example.webcardexample.Product" %><%--
  Created by IntelliJ IDEA.
  User: Robot
  Date: 2/22/2023
  Time: 8:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Your Cart Contents</h1>
<p>
    <%
        Cart cart = (Cart) session.getAttribute("cart");
        out.println(cart.getProducts());
    %>
</p>
</body>
</html>
