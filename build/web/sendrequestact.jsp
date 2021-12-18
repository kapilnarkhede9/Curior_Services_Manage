<%@page import="java.sql.*"%>
<%@ page session="true" %>
<%@page import="Dbcon.Dbconnection"%>
    <%
    
    String username = request.getParameter("username");
    String description = request.getParameter("description"); 
    String email = request.getParameter("email");
    String weight = request.getParameter("weight");
    String destination = request.getParameter("destination");
    String location = request.getParameter("location");
    String mobile = request.getParameter("mobile");
    
      
    try{
        
   
    Connection connection=Dbconnection.getConnection();    
    PreparedStatement ps=connection.prepareStatement("insert into requests(username,email,description,weight,destination,location,mobile) values(?,?,?,?,?,?,?)");

    ps.setString(1,username);
    ps.setString(2,email);
    ps.setString(3,description);
    ps.setString(4,weight);
    ps.setString(5,destination);
    ps.setString(6,location);
    ps.setString(7,mobile);
       
    int i=ps.executeUpdate();
    if(i>0)
    {
    response.sendRedirect("sendrequest.jsp?msg=Success");
    }
    else{
    response.sendRedirect("sendrequest.jsp?m1=Failed");    
    }
    
    }

    catch(Exception e)
    {
            out.println(e.getMessage());
    }
    %>