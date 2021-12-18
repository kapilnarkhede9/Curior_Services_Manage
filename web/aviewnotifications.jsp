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
    <script>alert('Approved..!');</script>
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
    <li><a href="adminhome.jsp">Home</a></li>
    <li><a href="adddelpersons.jsp">Add Delivery Person</a></li>
    <li><a href="viewdelpersons.jsp">View Delivery Persons</a></li>
    <li><a href="aviewrequests.jsp">View Requests</a></li>
    <li class="current-menu-item"><a href="aviewnotifications.jsp">View Notifications</a></li>
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

    
    <%@page import="java.sql.*"%>
    <%@ page session="true" %>
    <%@page import="Dbcon.Dbconnection"%> 
    <%
   
    try {
        
    Connection connection=Dbconnection.getConnection();    
    String sql1 = "select * from requests where status = 'Approved' or status = 'Delivered' ";
    Statement st1 = connection.createStatement();
    ResultSet rs1 = st1.executeQuery(sql1);
    if(rs1.next()){
    
    String sql = "select * from requests where status = 'Approved' or status = 'Delivered' ";
    Statement st = connection.createStatement();
    ResultSet rs = st.executeQuery(sql);

    %>
    <center>
        <p><font size="5" >Approved Requests </font></p>
    <style>
        th{
            color: #298bff;
        }
        td{
            text-align: center;
        }
    </style>
     <table border="2" width="100%">

    <tr>
    <th>User Name</th>
    <th>Email</th>
    <th>Description</th>
    <th>Approx Weight</th>
    <th>Destination</th>
    <th>Address</th>
    <th>Mobile No</th>
    <th>Status</th>
    <th>Cost</th>
    <th>Current Location</th>

    </tr>

    <%     while (rs.next()) {
    %>

    <tr>
        <td><%=rs.getString(2)%></td>
        <td><%=rs.getString(3)%></td>
        <td><textarea rows="2" cols="16"><%=rs.getString(4)%></textarea></td>
        <td><%=rs.getString(5)%></td>
        <td><%=rs.getString(6)%></td>
        <td><%=rs.getString(7)%></td>
        <td><%=rs.getString(8)%></td>
        <td><%=rs.getString(9)%></td>
        <td><%=rs.getString(10)%></td>
        <td><%=rs.getString(11)%></td>
    </tr>
    
   <%} }
    
    else{
        out.println("<center><br/><font size='4' color='red'>There are no Requests to display..!</font></center>");
    }
   
   
   %> 
    
    <%
    } catch (Exception e) {
        e.printStackTrace();
    }

    %>
    </table>
    </center>

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