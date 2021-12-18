<%@page import="java.sql.*"%>
<%@ page session="true" %>
<%@page import="Dbcon.Dbconnection"%>
<%@page import="Mail.Mail"%>

  <%

                       
            String id = session.getAttribute("id").toString();
            String email = session.getAttribute("email").toString();
            String location = request.getParameter("location");
            String destination = session.getAttribute("destination").toString();
            try {    
            Connection connection=Dbconnection.getConnection();   
            if(destination.indexOf(location)>= 0){
            Statement st=connection.createStatement();
            int j = st.executeUpdate("update requests set currentlocation='"+location+"',status = 'Delivered' where id='"+id+"' ");
            if(j!=0)
            {
                String msg ="Courier has been Delivered Succesfully..";
                Mail m = new Mail();
                m.secretMail(msg, email, email);
                
               response.sendRedirect("updatestatus.jsp?msg=success");
                }

                 else {
                    out.println(" failed");
                }
            }
            else {
                
            Statement st=connection.createStatement();
            int j = st.executeUpdate("update requests set currentlocation='"+location+"' where id='"+id+"' ");
            if(j!=0)
            {
               
               response.sendRedirect("updatestatus.jsp?msg=success");
                }

                 else {
                    out.println(" failed");
                }    
                
                
            }
            
            


                    } catch (Exception e) {
                           e.printStackTrace();
                       }

                        %>