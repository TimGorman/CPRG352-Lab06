<%-- 
    Document   : home
    Created on : 27-Feb-2022, 5:37:11 PM
    Author     : timgo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
    </head>
    <body>
        <h1>Home Page</h1>
        <h2>Hello ${user.username}</h2>
        
        <a href="home?logout">logout</a>
    </body>
</html>
