<%--
  Created by IntelliJ IDEA.
  User: Robot
  Date: 2/22/2023
  Time: 8:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>Add product to card</h1>

    <form action="${pageContext.request.contextPath}/cart" method="post">
        <label for="product_name"></label>
        <input type="text" id="product_name" name="product_name"><br>

        <input type="submit" value="Submit">
    </form>

    <button onclick="window.location.href='cartContentPage.jsp'">See your card</button>
</body>
</html>
