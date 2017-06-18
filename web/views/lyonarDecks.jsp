<%-- 
    Document   : lyonarDecks
    Created on : 18-jun-2017, 1:00:44
    Author     : Eduardo-Amilcar
--%>

<%@page import="entities.CardDeck"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Lyonar decks</h1>
    <li><a href="../index.jsp">Home</a></li>

    <h2>Users data</h2>
    <table>
        <tr>
            <th>id</th>
            <th>idcards</th>
            <th>name</th>
            <th>autor</th>
            <th>description</th>
            <th>daate</th>
            <th>likes</th>
            <th>dislikes</th>
        </tr>
       
   <%
            List<CardDeck> cardDecks = (List<CardDeck>) request.getAttribute("cardDecks");
            for(CardDeck allCards:cardDecks){           
                %>               
                <tr>
                    <td><%= allCards.getCdId()%></td>
                    <td><%= allCards.getCdIdcards()%></td>
                    <td><%= allCards.getCdName()%></td>
                    <td><%= allCards.getCdAuthor()%></td>
                    <td><%= allCards.getCdDescriptionDeck()%></td>
                    <td><%= allCards.getCdDate()%></td>
                    <td><%= allCards.getCdLikes()%></td>
                    <td><%= allCards.getCdDislikes()%></td>
                
            
                </tr>
                <% }
%>
           
    </table>




    </body>
</html>
