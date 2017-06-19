<%-- 
    Document   : index
    Created on : 15-may-2017, 18:32:17
    Author     : Eduardo-Amilcar
--%>
<%@page import="servlets.NewUser"%>
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
                    <h1><a id="logo" href="index.jsp">DUELYSTATION</a></h1>
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
                                        </li>
                                        <li>
                                            <button type="submit" class="btn btn-default">Submit</button>
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

                    <!-- Banner -->
                    <section id="banner">
                        <header>
                            <div id="validated_user">
                                <%
                                    String un = (String) session.getAttribute("usrname");
                                    if (un != null) {
                                %>
                                <p>Usuario Logeado: <%=un%></p>
                                <% } else {
                                %>
                                <p>No hay usuario validado</p>
                                <%}%>
                            </div>
                        </header>
                    </section>
                            <style>
                                #banner{
                                    background-image:url(images/pic01.jpg) !important;
              
                                }
                            </style>

                    <!-- Intro -->
                    <section id="intro" class="container">
                        <div class="row">
                            <div class="4u 12u(mobile)">
                                <section class="first">
                                    <i class="icon featured fa-cog"></i>
                                    <header>
                                        <h2>Duelystation Project</h2>
                                    </header>
                                    <p>Create your own Duelyst decks and share them with your friends!</p>
                                </section>
                            </div>
                            <div class="4u 12u(mobile)">
                                <section class="middle">
                                    <i class="icon featured alt fa-database"></i>
                                    <header>
                                        <h2>Database</h2>
                                    </header>
                                    <p>We have stored all the Duelyst cards. You can filter them by Faction, Rarity class and more</p>
                                </section>
                            </div>
                            <div class="4u 12u(mobile)">
                                <section class="last">
                                    <i class="icon featured alt2 fa-heart-o"></i>
                                    <header>
                                        <h2>Donations</h2>
                                    </header>
                                    <p>All donatios will be to upgrade this project!</p>
                                </section>
                            </div>
                        </div>
                        <footer>
                            <ul class="actions">
                                <h2>Help us improve. If you have any suggestion:</h2><br>
                                <li><a href="#" class="button big">Contact Us</a></li><br><br>
                                <li><a href="#" class="button alt big">About Us</a></li>
                            </ul>
                        </footer>
                    </section>

                </div>
            </div>
                            

            <!-- Main -->
            
            <!-- Footer -->
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
