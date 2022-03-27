<%-- 
    Document   : register
    Created on : 27-Mar-2022, 11:47:54 AM
    Author     : timgo
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping List</title>
    </head> 
    <body>
        <h1>Shopping List</h1>
            <form action="ShoppingList" method="post">
            <label>Username:</label>
            <input type="text" name="username" value="">
            <input type="submit" value="Register name">
                <input type="hidden" name="action" value="register">
    </form>
        <c:if test="${error}}">
            <p>No Username Entered</p>
    </c:if>  
    </body>
</html>
