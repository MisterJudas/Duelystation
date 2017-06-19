<%-- 
    Document   : allUsers
    Created on : 18-jun-2017, 14:02:34
    Author     : Eduardo-Amilcar
--%>

<%@page import="entities.CardDeck"%>
<%@page import="java.util.List"%>
<%@page import="entities.DuelystationUser"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <h2>List of all current decks:</h2>
        <table>
            <tr>
                <th>Identifier</th>
                <th>Deck name</th>
                <th>Author</th>
                <th>Description</th>
                <th>Date</th>  
                <th>Likes</th>
                <th>Dislikes</th>
            </tr>

            <%
                List<CardDeck> decks = (List<CardDeck>) request.getAttribute("decks");
                for (CardDeck d : decks) {
            %>               
            <tr>
                <td><%= d.getCdId()%></td>
                <td><%= d.getCdName()%></td>
                <td><%= d.getCdAuthor()%></td>
                <td><%= d.getCdDescriptionDeck()%></td>
                <td><%= d.getCdDate()%></td>      
                <td><%= d.getCdLikes()%></td>      
                <td><%= d.getCdDislikes()%></td>      
                
            </tr>
            <% }
            %>
        </table>
        <style>
         table, th, td {
   border: 1px solid black;
}   
        </style>
           
        Holy shit it worked <a href="index.jsp">Homesita</a>
    </body>
</html>
