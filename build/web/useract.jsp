<%@page import="java.sql.*"%>
<%@ page session="true" %>
<%@page import="Dbcon.Dbconnection"%> 
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
   
    try{
       
         
      Connection connection=Dbconnection.getConnection();
      String query1="select * from users where username='"+username+"' and password='"+password+"'"; 
      Statement st1=connection.createStatement();
      ResultSet rs=st1.executeQuery(query1);
      
	if(rs.next())
        {
         
         session.setAttribute("user",username);
         response.sendRedirect("userhome.jsp?msg=success");
        }
       else 
        {
            response.sendRedirect("user.jsp?m1=Login Failed");
        }
	}
    
        catch(Exception e)
        {
        System.out.println("Error in useract"+e.getMessage());
        }
%>