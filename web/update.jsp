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
<body>
       
    <div class="wrapper">
    <header class="cf">
    <div id="logo">
    <center> <p><font size="5" color="black">Courier Service System</font></p> </center>
    </div>
    </header>
    <nav class="cf">
    <ul id="nav" class="sf-menu">
    <li><a href="delboyhome.jsp">Home</a></li>
    <li class="current-menu-item"><a href="dviewrequest.jsp">View Admin Requests</a></li>
    <li><a href="updatestatus.jsp">Update Status</a></li>
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
    String destination = request.getParameter("destination");
    session.setAttribute("destination", destination);
    String id = request.getParameter("id");
    session.setAttribute("id", id);
    String email = request.getParameter("email");
    session.setAttribute("email", email);
    %>    
        
    <p align="justify">
    <center><p><font color="red" size="5">Update Current Status</font></p>
    <form name="myform" action="updateact.jsp" method="post" id="" >
    <table width="371">
    
    <tr>
    <td height="65"><font color="black">Current Location</td>
    <td><input name="location" autocomplete="off" required="" placeholder="Current Location"></input></td>
    </tr>
    <tr>
    <td height="43" rowspan="3"></td>
    <td align="left" valign="middle"> 
    <p>
    <input name="submit" type="submit" value="Update" />
    </p>
    <div align="right">
    </div></td>
    </tr>
    </table>
    </form>
    </center>
    </p>

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