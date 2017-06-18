<%-- 
    Document   : newDeck
    Created on : 18-jun-2017, 11:26:33
    Author     : Eduardo-Amilcar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <h1>CREATE NEW SET</h1>
        <form action="NewCardDeck" method="POST">
            <p>ID: <input type="text" name="id"</p>
            <p>NAME: <input type="text" name="name"</p>                     
            <p>Description: <input type="text" name="description"</p> 
<!--            <p>IDCARD<input type="text" name="idcard"</p-->
        <p><input type="submit" value="New" name="newcarddeck"></p>           
        </form>

    </body>
</html>
