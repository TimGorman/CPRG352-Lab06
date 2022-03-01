<%-- 
    Document   : login
    Created on : 27-Feb-2022, 5:36:39 PM
    Author     : timgo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <h1>Login</h1>
        <form action="login" method="post">
            <label>Username:</label>
            <input type="text" name="user" value="">
                <br>
            <label>Password:</label>
            <input type="text" name="passw" value="">
                <br>
            <input type="submit" value="login">  
                <b>${invalid}</b>
                <b>${logout}</b>
    </body>
</html>
