<%-- 
    Document   : allUsers
    Created on : 18-jun-2017, 14:02:34
    Author     : Eduardo-Amilcar
--%>

<%@page import="java.util.List"%>
<%@page import="entities.DuelystationUser"%>
<%@page import="entities.CardDeck"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>        
          <h2>Users data</h2>
    <table>
        <tr>
            <th>email</th>
            <th>username</th>
            <th>realname</th>
            <th>realsurname</th>
            <th>passw</th>
            <th>decks</th>
  
        </tr>
       
   <%
            List<DuelystationUser> duelystusers = (List<DuelystationUser>) request.getAttribute("duelystusers");
            for(DuelystationUser dsuser : duelystusers){           
                %>               
                <tr>
                    <td><%= dsuser.getDuEmail()%></td>
                    <td><%= dsuser.getDuUsername()%></td>
                    <td><%= dsuser.getDuRealname()%></td>
                    <td><%= dsuser.getDuRealsurname()%></td>
                    <td><%= dsuser.getDuPassword()%></td>
                    <td><%= dsuser.getDuDecks()%></td>
               
                </tr>
                <% }
%>
           
    </table>
    </body>
</html>
