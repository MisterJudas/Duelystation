<%-- 
    Document   : allUsers
    Created on : 18-jun-2017, 14:02:34
    Author     : Eduardo-Amilcar
--%>

<%@page import="entities.DuelystCards"%>
<%@page import="entities.CardDeck"%>
<%@page import="java.util.List"%>
<%@page import="entities.DuelystationUser"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
    <head>
        <title>Duelystation</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
        <link rel="stylesheet" href="assets/css/main.css" />
        <!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
        <link rel="stylesheet" href="assets/style.css"/>
    </head>
    <body class="homepage">
        <div id="page-wrapper">
            <!-- Header -->
            <div id="header-wrapper">
                <div id="header">
                    <!-- Logo -->
                    <h1><a href="index.jsp">DUELYSTATION</a></h1>
                    <!-- Nav -->
                    <nav id="nav">
                        <ul>
                            <li class="current"><a href="index.jsp">Home</a></li>
                            <li><a href="AllDecks">All Decks</a>
                                <ul>
                                    <li>Decks by faction:</li>
                                    <li><a href="LyonarCards">Lyonar decks</a></li>
                                    <li><a href="AllDecks">Songhai decks</a></li>
                                    <li><a href="#">Vetruvian decks</a></li>
                                    <li><a href="#">Abyssian decks</a></li>
                                    <li><a href="#">Magmar decks</a></li>
                                    <li><a href="#">Vanar decks</a></li>
                                </ul>
                            </li>
                            <li><a href="AllCards">All Cards</a>
                                <ul>
                                    <li>Cards by faction:</li>
                                    <li><a href="">Lyonar cards</a></li>
                                    <li><a href="">Songhai cards</a></li>
                                    <li><a href="#">Vetruvian cards</a></li>
                                    <li><a href="#">Abyssian cards</a></li>
                                    <li><a href="#">Magmar cards</a></li>
                                    <li><a href="#">Vanar cards</a></li>
                                </ul>
                            </li>

                            <li><a href="newCardDeck.jsp">Deckbuilder</a></li>
                            <li><a href="AllUsers">All Users</a></li>


                            <%
                                String usr = (String) session.getAttribute("usrname");
                                if (usr != null) {
                            %>

                            <li><a href="CerrarSesion">CerrarSesion</a></li>   
                                <% } else {
                                %>
                            <li><a href="#">Login</a>        
                                <ul>    
                                    <form action="LoginUser" method="POST">  
                                        <li>
                                            <label for="usrname"></label>
                                            <input type="text" class="current" name="usrname" placeholder="Introduce Usuario" required>
                                        </li>
                                        <li>
                                            <label for="psw"></label>
                                            <input type="password" class="current" name="psw" placeholder="Enter password" required>
                                        </li>
                                        <li>
                                            <button type="submit" class="btn btn-default">Submit</button>                                         
                                        </li>
                                    </form>
                                </ul>
                            </li>
                            <li><a href="#">Register</a>
                                <ul class="dropotron">
                                    <form action="NewUser" method="POST">
                                        <li>  
                                            <label for="email"><span class="glyphicon glyphicon-envelope"></span></label>
                                            <input type="email" class="form-control" name="email" placeholder="Introduce Email" required>
                                        </li>
                                        <li>
                                            <label for="usrname"><span class="glyphicon glyphicon-user"></span></label>
                                            <input type="text" class="form-control" name="usrname" placeholder="Introduce el usuario" required>
                                        </li>
                                        <li>
                                            <label for="psw"><span class="glyphicon glyphicon-certificate"></span></label>
                                            <input type="password" class="form-control" name="psw" placeholder="Introduce Password" required>
                                        </li>
                                        <li>
                                            <label for="nombre"><span class="glyphicon glyphicon-user"></span></label>
                                            <input type="text" class="form-control" name="nombre" placeholder="Introduce Nombre" required>
                                        </li>
                                        <li>
                                            <label for="apellido"><span class=" glyphicon glyphicon-user"></span></label>
                                            <input type="text" class="form-control" name="apellido" placeholder="Introduce Apellido" required>
                                        </li><br>
                                        <li>
                                            <button type="submit" class="btn btn-default">Borrar</button>
                                        </li>
                                    </form>
                                </ul>
                            </li>
                            <%}%>

                            <!--                            <script>
                                                            $('.dropotron').click(function (event) {
                                                                event.stopPropagation();
                                                            });                             ​
                                                        </script>-->
                    </nav>

                    <br><br>
                    <section id="section">
                        <h2>List of all cards</h2>
                        <h3>Click on table name to order by</h3><br>
                        <table border="1" id="myTable">
                            <tr>
                                <th onclick="sortTable(0)">Name</th>
                                <th onclick="sortTable(1)">Description</th>
                                <th onclick="sortTable(2)">Type</th>
                                <th onclick="sortTable(3)">Race</th>
                                <th onclick="sortTable(4)">Attack</th>
                                <th onclick="sortTable(5)">Health</th>
                                <th onclick="sortTable(6)">Likes</th>
                                <th onclick="sortTable(7)">Dislikes</th>
                            </tr>
                            <%
                                List<DuelystCards> cards = (List<DuelystCards>) request.getAttribute("cards");
                                for (DuelystCards l : cards) {
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
                        <style>
                            table, th, td {
                                border: 1px solid black;
                                cursor: pointer;
                                background-color: white;
                                color: #D52349;
                            }   
                        </style>
                    </section>
                    <br><br><br>

                    <!--Script-->
                    <script>
                        function sortTable(n) {
                            var table, rows, switching, i, x, y, shouldSwitch, dir, switchcount = 0;
                            table = document.getElementById("myTable");
                            switching = true;
                            //Set the sorting direction to ascending:
                            dir = "asc";
                            /*Make a loop that will continue until
                             no switching has been done:*/
                            while (switching) {
                                //start by saying: no switching is done:
                                switching = false;
                                rows = table.getElementsByTagName("TR");
                                /*Loop through all table rows (except the
                                 first, which contains table headers):*/
                                for (i = 1; i < (rows.length - 1); i++) {
                                    //start by saying there should be no switching:
                                    shouldSwitch = false;
                                    /*Get the two elements you want to compare,
                                     one from current row and one from the next:*/
                                    x = rows[i].getElementsByTagName("TD")[n];
                                    y = rows[i + 1].getElementsByTagName("TD")[n];
                                    /*check if the two rows should switch place,
                                     based on the direction, asc or desc:*/
                                    if (dir == "asc") {
                                        if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
                                            //if so, mark as a switch and break the loop:
                                            shouldSwitch = true;
                                            break;
                                        }
                                    } else if (dir == "desc") {
                                        if (x.innerHTML.toLowerCase() < y.innerHTML.toLowerCase()) {
                                            //if so, mark as a switch and break the loop:
                                            shouldSwitch = true;
                                            break;
                                        }
                                    }
                                }
                                if (shouldSwitch) {
                                    /*If a switch has been marked, make the switch
                                     and mark that a switch has been done:*/
                                    rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
                                    switching = true;
                                    //Each time a switch is done, increase this count by 1:
                                    switchcount++;
                                } else {
                                    /*If no switching has been done AND the direction is "asc",
                                     set the direction to "desc" and run the while loop again.*/
                                    if (switchcount == 0 && dir == "asc") {
                                        dir = "desc";
                                        switching = true;
                                    }
                                }
                            }
                        }
                    </script>


                </div>
            </div>
            <div id="footer-wrapper">
                <section id="footer" class="container">					
                    <div class="row">
                        <div class="12u">

                            <!-- Copyright -->
                            <div id="copyright">
                                <ul class="links">
                                    <li>&copy; Duelystation. All rights reserved.</li><li>Redesigned: <a href="">Eduardo-Amilcar</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
        <!-- Scripts -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/jquery.dropotron.min.js"></script>
        <script src="assets/js/skel.min.js"></script>
        <script src="assets/js/skel-viewport.min.js"></script>
        <script src="assets/js/util.js"></script>
        <!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
        <script src="assets/js/main.js"></script>
    </body>
</html>
