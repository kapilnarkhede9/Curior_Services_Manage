<%@page import="java.sql.*"%>
<%@ page session="true" %>
<%@page import="Mail.Mail"%>
<%@page import="Dbcon.Dbconnection"%>

  <%

                       
            String id = request.getParameter("id");
            String email = request.getParameter("email");
            String cost = request.getParameter("cost");
            try {
                
            Connection connection=Dbconnection.getConnection();    
            Statement st=connection.createStatement();
            int j = st.executeUpdate("update requests set cost = '"+cost+"',status='Approved' where id='"+id+"' ");
            if(j!=0)
            {
                String msg ="Approved";
                Mail m = new Mail();
                m.secretMail(msg, email, email);
                
               response.sendRedirect("dviewrequest.jsp?msg=success");
                }

                 else {
                    out.println(" failed");
                }


                    } catch (Exception e) {
                           e.printStackTrace();
                       }

                        %>