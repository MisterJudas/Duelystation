<%-- 
    Document   : index
    Created on : 15-may-2017, 18:32:17
    Author     : Eduardo-Amilcar
--%>

<%@page import="java.util.List"%>
<%@page import="entities.DuelystCards"%>
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
                            <li>
                                <a href="#">Decks</a>
                                <ul>
                                    <li><a href="#">Lyonar decks</a></li>
                                    <li><a href="#">Songhai decks</a></li>
                                    <li><a href="#">Vetruvian decks</a></li>
                                    <li><a href="#">Abyssian decks</a></li>
                                    <li><a href="#">Magmar decks</a></li>
                                    <li><a href="#">Vanar decks</a></li>
                                </ul>
                            </li>

                            <li><a href="cards.jsp">Cards</a></li>
                            <li><a href="right-sidebar.html">Deckbuilder</a></li>
                            <li><a href="no-sidebar.html">Login</a></li>
                        </ul>
                    </nav>

                    <!-- Banner -->
                    <section id="banner">
                        <header>
                            <h2>Howdy. This is Dopetrope.</h2>
                            <p>A responsive template by HTML5 UP</p>
                        </header>
                    </section>
                    <br>
                    <!-- Intro -->
                    <section id="intro" class="container">                        
                        <h2>List of all Duelyst cards</h2>
                        <table>
                            <tr>
                                <th>Name</th>
                                <th>Faction</th>
                                <th>Set</th>
                                <th>Type</th>
                                <th>Race</th>
                                <th>Rarity</th>
                                <th>Cost</th>
                                <th>Attack</th>
                                <th>Health</th>
                                <th>Text</th>             
                            </tr>

                            <%
                                List<DuelystCards> DuelystCardsAux = (List<DuelystCards>) request.getAttribute("DuelystCards");
                                for (DuelystCards DuelystCards : DuelystCardsAux) {
                            %>                     
                            <tr>
                                <td><%=DuelystCards.getDcName()%></td>
                                <td><%=DuelystCards.getDcFaction()%></td>
                                <td><%=DuelystCards.getDcCardSet()%></td>
                                <td><%=DuelystCards.getDcType()%></td>
                                <td><%=DuelystCards.getDcRace()%></td>
                                <td><%=DuelystCards.getDcRarity()%></td>
                                <td><%=DuelystCards.getDcCost()%></td>
                                <td><%=DuelystCards.getDcAttack()%></td>
                                <td><%=DuelystCards.getDcDefense()%></td>
                                <td><%=DuelystCards.getDcCardText()%></td>                              
                            </tr>
                            <%}
                            %>

                           } 
                           
                        </table>
                    </section>

                </div>
            </div>

            <!-- Main -->-->
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
