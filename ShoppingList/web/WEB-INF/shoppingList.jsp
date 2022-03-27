
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
        <p>Hello, ${username} <a href="<c:url value="/ShoppingList">
                                    <c:param name="action" value="Logout"/>
                                 </c:url>"logout</a></p>         
        <h2>List</h2> 
        <form action="ShoppingList" method="post" >
            <label>Add Item:</label>
            <input type="text" name="itemdesc" value="">
            <input type="submit" value="Add">
            <input type="hidden" name="action" value="add">
        </form>
        
        <
    </body>
</html>