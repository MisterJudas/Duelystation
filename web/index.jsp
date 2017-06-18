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
                    <h1><a href="index.jsp">DUELYSTATION</a></h1>
                    <!-- Nav -->
                    <nav id="nav">
                        <ul>
                            <li class="current"><a href="index.jsp">Home</a></li>
                            <li><a href="#">Decks</a>
                                <ul>
                                    <li><a href="lyonarDecks.jsp">Lyonar decks</a></li>
                                    <li><form action="newCardDeck.jsp">
                                            <input type="submit" value="New Team">
                                        </form>
                                    </li>
                                    <li><a href="#">Vetruvian decks</a></li>
                                    <li><a href="#">Abyssian decks</a></li>
                                    <li><a href="#">Magmar decks</a></li>
                                    <li><a href="#">Vanar decks</a></li>
                                </ul>
                            </li>
                            <li><a href="cards.jsp">Cards</a></li>
                            <li><a href="newCardDeck.jsp">Deckbuilder</a></li>

                            <li><a href="#">Register</a>
                                <ul>
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

                    <!-- Intro -->
                    <section id="intro" class="container">
                        <div class="row">
                            <div class="4u 12u(mobile)">
                                <section class="first">
                                    <i class="icon featured fa-cog"></i>
                                    <header>
                                        <h2>Ipsum consequat</h2>
                                    </header>
                                    <p>Nisl amet dolor sit ipsum veroeros sed blandit consequat veroeros et magna tempus.</p>
                                </section>
                            </div>
                            <div class="4u 12u(mobile)">
                                <section class="middle">
                                    <i class="icon featured alt fa-flash"></i>
                                    <header>
                                        <h2>Magna etiam dolor</h2>
                                    </header>
                                    <p>Nisl amet dolor sit ipsum veroeros sed blandit consequat veroeros et magna tempus.</p>
                                </section>
                            </div>
                            <div class="4u 12u(mobile)">
                                <section class="last">
                                    <i class="icon featured alt2 fa-star"></i>
                                    <header>
                                        <h2>Tempus adipiscing</h2>
                                    </header>
                                    <p>Nisl amet dolor sit ipsum veroeros sed blandit consequat veroeros et magna tempus.</p>
                                </section>
                            </div>
                        </div>
                        <footer>
                            <ul class="actions">
                                <li><a href="#" class="button big">Get Started</a></li>
                                <li><a href="#" class="button alt big">Learn More</a></li>
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
                                    <li>&copy; Untitled. All rights reserved.</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
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
