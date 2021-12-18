<%@page import="java.sql.*"%>
<%@ page session="true" %>
<%@page import="Dbcon.Dbconnection"%>
    <%
    
    String username = request.getParameter("username");
    String password = request.getParameter("password"); 
    String email = request.getParameter("email");
    String gender = request.getParameter("gender");
    String location = request.getParameter("location");
    String mobile = request.getParameter("mobile");
    
      
    try{
    
    Connection connection=Dbconnection.getConnection();    
    String query = "select * from delpersons where username = '"+username+"' ";
    Statement st3 = connection.createStatement();
    ResultSet rs3 = st3.executeQuery(query);
        
    if(rs3.next())
    {     
    
     response.sendRedirect("adddelpersons.jsp?msgg=Username_Already_Existed");
    }
    
    else{
    
    PreparedStatement ps=connection.prepareStatement("insert into delpersons(username,password,email,gender,location,mobile) values(?,?,?,?,?,?)");

    ps.setString(1,username);
    ps.setString(2,password);
    ps.setString(3,email);
    ps.setString(4,gender);
    ps.setString(5,location);
    ps.setString(6,mobile);
       
    int i=ps.executeUpdate();
    if(i>0)
    {
    response.sendRedirect("adddelpersons.jsp?msg=Added");
    }
    else{
    response.sendRedirect("adddelpersons.jsp?m1=Failed");    
    }
    
    }
    }

    catch(Exception e)
    {
            out.println(e.getMessage());
    }
    %>