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
    
    <table width="601" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >

<%
    String id = request.getParameter("id");
    String s1,s2,s3,s4,s5,s6,s7;
  
    try{
           
        Connection connection=Dbconnection.getConnection();  
	Statement st1 = connection.createStatement();
        ResultSet rs1 = st1.executeQuery("select * from requests where id = '"+id+"'");
       if ( rs1.next() )
            {
                            
                s1=rs1.getString(2);
                s2=rs1.getString(3);
                s3=rs1.getString(4);
                s4=rs1.getString(5);
                s5=rs1.getString(6);
                s6=rs1.getString(7);
                s7=rs1.getString(8);


        %>
        <center><h2><font color="green" size="5">  Request Details</font></h2></center>
        
        <form action="approve.jsp?id=<%=rs1.getString(1)%>" method="post">          
        
        <tr>
        <td  width="131" valign="middle" height="48" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
        <strong><font color="black"> Username : </font></strong></div></td>
	<td  width="166" valign="middle" height="48" ><div align="left" class="style11" style="margin-left:20px;"> 
        <input type="text" name="username" size="25" readonly="" value="<%=s1%>"> </div></td>
        </tr>
        
        <tr>
        <td  width="131" valign="middle" height="48" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
        <strong><font color="black">Email : </font></strong></div></td>
        <td  width="166" valign="middle" height="48" ><div align="left" class="style11" style="margin-left:20px;">
        <input type="text" name="email" size="25" readonly="" value="<%=s2%>"></div></td>
        </tr>
        <tr>
        <td  width="131" valign="middle" height="51" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
        <strong><font color="black">Description : </font></strong></div></td>
        <td  width="166" valign="middle" height="51"><div align="left" class="style11" style="margin-left:20px;">
        <textarea name="description" cols="26" readonly=""><%=s3%></textarea></div></td>
        </tr>
        
        <tr>
        <td  width="131" valign="middle" height="48" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
        <strong><font color="black">Weight : </font></strong></div></td>
        <td  width="166" valign="middle" height="48" ><div align="left" class="style11" style="margin-left:20px;">
        <input type="text" name="weight" size="25" readonly="" value="<%=s4%>"></div></td>
        </tr>
        <tr>
        <td  width="131" valign="middle" height="51" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
        <strong><font color="black">Destination : </font></strong></div></td>
        <td  width="166" valign="middle" height="51"><div align="left" class="style11" style="margin-left:20px;">
        <textarea type="text" name="destination" rows="2" cols="26" readonly=""><%=s5%></textarea></div></td>
        </tr>
        <tr>
        <td  width="131" valign="middle" height="51" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
        <strong><font color="black">User Location : </font></strong></div></td>
        <td  width="166" valign="middle" height="51"><div align="left" class="style11" style="margin-left:20px;">
        <input type="text" name="location" size="25" readonly="" value="<%=s6%>"/></div></td>
        </tr>
        <tr>
        <td  width="131" valign="middle" height="51" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
        <strong><font color="black">Mobile No : </font></strong></div></td>
        <td  width="166" valign="middle" height="51"><div align="left" class="style11" style="margin-left:20px;">
        <input type="text" name="mobile" size="25" readonly="" value="<%=s7%>"/></div></td>
        </tr>
        <tr>
        <td  width="131" valign="middle" height="51" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
        <strong><font color="black">Cost : </font></strong></div></td>
        <td  width="166" valign="middle" height="51"><div align="left" class="style11" style="margin-left:20px;">
        <input type="text" name="cost" size="25" required="" Placeholder="Cost"/></div></td>
        </tr>
        <td  width="131" valign="middle" height="51" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
        <strong><font color="black"> </font></strong></div></td>    
        <td  width="93" height="110">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="submit" value="Approve"/> </td>
        </tr>
        </form>
        </table>
    
    <%
    }
    }catch (Exception e) {
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