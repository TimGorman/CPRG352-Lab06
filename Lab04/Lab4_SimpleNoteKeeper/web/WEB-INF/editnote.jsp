<%-- 
    Document   : editnote
    Created on : 24-Feb-2022, 4:50:00 PM
    Author     : timgo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Simple Note Keeper</title>
    </head>
    <body>
        <h1>Simple Note Keeper</h1>
      
        <h2>View Note</h2>
      
            <form action="note" method="post">
                <label>Title:</label>
                <input type="text" name="title" value="${note.title}">
                    <br>
                <label>Contents:</label>
                <textarea name="content">${note.contents}</textarea>
                    <br>
                <input type="submit" name="action" value="Save">
            </form>
        
    </body>
</html>
