<%@ page import="com.example.webcardexample.Cart" %>
<%@ page import="com.example.webcardexample.Product" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cart Contents</title>
</head>
<body>
<h1>Your Cart Contents</h1>
<ul>
    <%
        Cart cart = (Cart) request.getAttribute("cart");
        if (cart != null) {
            for (Product product : cart.getProducts()) {
    %>
    <li><%= product.getName() %></li>
    <%
        }
    } else {
    %>
    <li>Your cart is empty</li>
    <%
        }
    %>
</ul>
<br>
<a href="${pageContext.request.contextPath}cartFildPage.jsp">Add More Products</a>
</body>
</html>
