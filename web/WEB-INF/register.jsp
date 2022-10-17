<%-- 
    Document   : register
    Created on : 11-Oct-2022, 10:57:48 PM
    Author     : ardee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
    </head>
    <body>
        <h1>Shopping List</h1>
        <form action="ShoppingList" method="post">
            Username:<input type="text" name="username" value="username">
            <input type="hidden" name="action" value="register">
            <input type="submit" value="Register name">
        </form>
            <p>${message}<p>
    </body>
</html>
