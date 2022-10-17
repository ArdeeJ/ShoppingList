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
        <a href="ShoppingList?actoin=logout" action="logout">Logout</a>
        <br>
        <h1>List</h1>
        <form action="ShoppingList" method="post">
              Add item:
              <input type="text" name="item"> 
              <input type="submit" value="Add">
              <input type="hidden" name="action" value="add">
        </form>
        <form action="ShoppingList" method="post">
            <ul>
                <c:forEach items ="${itemList}" var="item">
                    <li><input type="radio" name="item" value="${item}"></li>
                </c:forEach>               
            </ul>
                <input type="submit" value="Delete">
                <input type="hidden" name="action" value="delete">
        </form>
    </body>
</html>
