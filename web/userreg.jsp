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
    
    <%
    if (request.getParameter("m1") != null) {%>
    <script>alert('Registration Failed..!');</script>
    <%}%>
    
    <div class="wrapper">
    <header class="cf">
    <div id="logo">
    <center> <p><font size="5" color="black">Courier Service System</font></p> </center>
    </div>
    </header>
    <nav class="cf">
    <ul id="nav" class="sf-menu">
    <li><a href="index.html">Home</a></li>
    <li><a href="admin.jsp">Admin</a></li>  
    <li><a href="delboy.jsp">Delivery Person</a></li>
    <li class="current-menu-item"><a href="user.jsp">User</a></li>
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

    <p align="justify">
    <center><p><font color="red" size="5">User Registration</font></p>
    <form name="myform" action="Register" method="get"  >
    <table width="371">
    <tr>
    <td height="43"><font color="black">User Name </td>
    <td width="218"><input name="username" autocomplete="off" required="" placeholder="User Name" /></td>
    </tr>
    <tr>
    <td height="43"><font color="black">Password </td>
    <td width="218"><input type="password" autocomplete="off" name="password" required="" placeholder="Password" /></td>
    </tr>
    <tr>
    <td height="43"><font color="black"> Email ID</td>
    <td><input name="email" autocomplete="off" required="" placeholder="Email ID"/></td>
    </tr>
    <tr>
    <td height="43"><font color="black">Date Of Birth</td>
    <td><input type="date" name="dob" style="text-align:right" required="" ></td></label>
    </td>
    </tr>
    <tr>
    <td height="43"><font color="black">Select Gender</td>
    <td><select name="gender" style="width:170px;" required="">
    <option>--Select--</option>
    <option>MALE</option>
    <option>FEMALE</option>
    </select></td>
    </tr>
    <tr>
    <td height="65"><font color="black">Address</td>
    <td><input name="location" autocomplete="off" required="" placeholder="Location"></input></td>
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
    <input name="submit" type="submit" value="ADD" />
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