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

    <%@page import="java.sql.*"%>
    <%@ page session="true" %>
    <%@page import="Dbcon.Dbconnection"%>     
    <%
   
    Connection connection=Dbconnection.getConnection();
    String user = session.getAttribute("user").toString();
    String location = session.getAttribute("location").toString();
    try {
    String sql1 = "select * from requests where status = 'Assigned' and delpersonname = '"+user+"' ";
    Statement st1 = connection.createStatement();
    ResultSet rs1 = st1.executeQuery(sql1);
    if(rs1.next()){
    
    String sql = "select * from requests where status = 'Assigned' and delpersonname = '"+user+"' ";
    Statement st = connection.createStatement();
    ResultSet rs = st.executeQuery(sql);

    %>
    <center>
        <p><font size="5" >View Requests from Admin </font></p>
    <style>
        th{
            color: #298bff;
        }
        td{
            text-align: center;
        }
    </style>
     <table border="2" width="80%">

    <tr>
    <th>User Name</th>
    <th>Email</th>
    <th>Description</th>
    <th>View Details</th>

    </tr>

    <%     while (rs.next()) {
    %>

    <tr>
        <td><%=rs.getString(2)%></td>
        <td><%=rs.getString(3)%></td>
        <td><textarea rows="2" cols="16" readonly=""><%=rs.getString(4)%></textarea></td>
        <td><a href="viewdetails.jsp?id=<%=rs.getString(1)%>"><button type="button">View Details</button></a></td>
        
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