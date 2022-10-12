<%-- 
    Document   : shoppingList
    Created on : 11-Oct-2022, 10:58:04 PM
    Author     : ardee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping List</title>
    </head>
    <body>
        <h1>Shopping List</h1>
        Hello, ${username}
        <a href="login?logout">Logout</a>
        <br>
        <h1>List</h1>
        Add item: <input type="text" name="item"> <input type="submit" value="Add">
    </body>
</html>
