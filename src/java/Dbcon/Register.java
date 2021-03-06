package Dbcon;

import Dbcon.Dbconnection;
import static com.sun.corba.se.spi.presentation.rmi.StubAdapter.request;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Vector;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import javazoom.upload.*;

/**
 *
 * @author ashwini
 */
public class Register extends HttpServlet {
    
    
//protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    
    
   public void doGet(HttpServletRequest nreq, HttpServletResponse response) throws IOException{  

       response.setContentType("text/html");  
        PrintWriter out = response.getWriter();

        try {
    String username = nreq.getParameter("username");
    String password = nreq.getParameter("password"); 
    String email = nreq.getParameter("email");
    String dob = nreq.getParameter("dob");
    String gender = nreq.getParameter("gender");
    String location = nreq.getParameter("location");
    String mobile = nreq.getParameter("mobile");
    
    Connection con=Dbconnection.getConnection();
    
    
    String query = "select * from users where username = '"+username+"'";
    Statement st3 = con.createStatement();
    ResultSet rs3 = st3.executeQuery(query);
        
    if(rs3.next())
    {     
    
     response.sendRedirect("userreg.jsp?msgg=Username_Already_Existed");
    }
    
    else{
    
    PreparedStatement ps=con.prepareStatement("insert into users(username,password,email,dob,gender,location,mobile) values(?,?,?,?,?,?,?)");

    ps.setString(1,username);
    ps.setString(2,password);
    ps.setString(3,email);
    ps.setString(4,dob);
    ps.setString(5,gender);
    ps.setString(6,location);
    ps.setString(7,mobile);
       
    int i=ps.executeUpdate();
    if(i>0)
    {
    response.sendRedirect("user.jsp?msg=Success");
    }
    else{
    response.sendRedirect("userreg.jsp?m1=Failed");    
    }
    
    }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
