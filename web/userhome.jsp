<html>
<head>
<title>Courier Service System</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">
<link href='http://fonts.googleapis.com/css?family=Arvo:400' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Lato:400,700' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/responsive.css">
<script src="js/modernizr.js"></script>
</head>

<%
    if (request.getParameter("msg") != null) {%>
    <script>alert('Login Successful..!');</script>
    <%}%>
<body>
    
    <div class="wrapper">
    <header class="cf">
    <div id="logo">
    <center> <p><font size="5" color="black">Courier Service System</font></p> </center>
    </div>
    </header>
    <nav class="cf">
    <ul id="nav" class="sf-menu">
    <li class="current-menu-item"><a href="userhome.jsp">Home</a></li>
    <li><a href="sendrequest.jsp">Send Courier Request</a></li>
    <li><a href="uviewrequests.jsp">View Status</a></li>
    <li><a href="logout.jsp">Logout</a></li>
    </ul>
    </nav>
    <div id="main" class="cf">
    <div class="slider-wrapper">
    <div id="slider" class="nivoSlider"> 
    <img src="img/dummies/slides/01.jpg" alt="" title="Courier Service System">  
    <img src="img/dummies/slides/02.jpg" alt="" title="Courier Service System">  
    </div>
    </div>
    <div class="tagline">
    <%
    String user = session.getAttribute("user").toString();
    %>
    <center><p><font color="black" size="5">Welcome <%=user%> </font></p></center>

    </div>


    </div>
    <div class="footer-divider"></div>
    <footer class="cf"></footer>
    </div>
    <script src="js/jquery.js"></script>
    <script src="js/custom.js"></script>
    <script src="js/superfish-1.4.8/js/hoverIntent.js"></script>
    <script src="js/superfish-1.4.8/js/superfish.js"></script>
    <script src="js/superfish-1.4.8/js/supersubs.js"></script>
    <script src="js/css3-mediaqueries.js"></script>
    <script src="js/nivoslider.js"></script>
    <script src="js/tabs.js"></script>
</body>
</html>