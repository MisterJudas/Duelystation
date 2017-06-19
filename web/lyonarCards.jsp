<%-- 
    Document   : lyonarCards
    Created on : 18-jun-2017, 20:51:05
    Author     : Eduardo-Amilcar
--%>

<%@page import="java.util.List"%>
<%@page import="entities.DuelystCards"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>List of all Lyonar Cards</h1>
        <table>
            <tr>
                <th>Name</th>
                <th>Description</th>
                
                <th>Type</th>
                <th>Race</th>
                <th>Attack</th>
                <th>Health</th>
            
                <th>Likes</th>
                <th>Dislikes</th>
            </tr>
            <%
                List<DuelystCards> lyocards = (List<DuelystCards>) request.getAttribute("cardsreq");
                for (DuelystCards l : lyocards) {
            %>
            <tr>
                <td><%= l.getDcName()%></td> 
                <td><%= l.getDcDescription()%></td> 
            
                <td><%= l.getDcType()%></td> 
                <td><%= l.getDcRace()%></td> 
                <td><%= l.getDcAttack()%></td> 
                <td><%= l.getDcHealth()%></td> 
            
                <td><%= l.getDcLikes()%></td> 
                <td><%= l.getDcDislikes()%></td> 
            </tr>
            <%}
            %>
        </table>
    </body>
</html>
