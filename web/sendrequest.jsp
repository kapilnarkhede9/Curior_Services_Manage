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
    <script>alert('Request Sent to Admin..!');</script>
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
    <li><a href="userhome.jsp">Home</a></li>
    <li class="current-menu-item"><a href="sendrequest.jsp">Send Courier Request</a></li>
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
        
    <p align="justify">
    <center><p><font color="red" size="5">Send Courier Request</font></p>
    <form name="myform" action="sendrequestact.jsp" method="post" id="" >
    <table width="371">
    <tr>
    <td height="43"><font color="black">User Name </td>
    <td width="218"><input name="username" autocomplete="off" readonly="" value="<%=user%>" /></td>
    </tr>
    <tr>
    <td height="43"><font color="black"> Email ID</td>
    <td><input name="email" autocomplete="off" required="" placeholder="Email ID"/></td>
    </tr>
    <tr>
    <td height="65"><font color="black">Description</td>
    <td><textarea name="description" rows="3" cols="22" required="" placeholder="Description"></textarea></td>
    </tr>
    <tr>
    <td height="65"><font color="black">Approx Weight</td>
    <td><input name="weight" autocomplete="off" required="" placeholder="Approx Weight"></input></td>
    </tr>
    <tr>
    <td height="65"><font color="black">Destination</td>
    <td><input name="destination" autocomplete="off" required="" placeholder="Destination"></input></td>
    </tr>
    <tr>
    <td height="65"><font color="black">From Address</td>
    <td><textarea rows="3" cols="22" name="location" required="" placeholder="Address"></textarea></td>
    </tr>
    <tr>
    <td height="43"><font color="black">Mobile Number </td>
    <td><input name="mobile" autocomplete="off" required="" placeholder="Mobile Number"/></td>
    </tr>
    <tr>
    <td height="43" rowspan="3">
    <p>&nbsp;</p></td>
    <td align="left" valign="middle"> <p>&nbsp;
    </p>
    <p>
    <input name="submit" type="submit" value="SEND REQUEST" />
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