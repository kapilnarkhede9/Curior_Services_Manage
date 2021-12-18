<%@page import="java.sql.*"%>
<%@ page session="true" %>
<%@page import="Dbcon.Dbconnection"%>

  <%
              
            String id = request.getParameter("id");
            String location = request.getParameter("location");

            Connection connection=Dbconnection.getConnection();
            String sql = "select * from delpersons where location = '"+location+"' ";
            Statement st = connection.createStatement();
            ResultSet rs = st.executeQuery(sql);
            String uname = "null";
            if(rs.next()){
            uname = rs.getString("username");
                
            }
            
            try {
            Statement st1=connection.createStatement();
            int j = st1.executeUpdate("update requests set status='Assigned', delpersonname = '"+uname+"' where id='"+id+"' ");
            if(j!=0)
            {
               response.sendRedirect("aviewrequests.jsp?msg=success");
                }

                 else {
                    out.println(" failed");
                }


                    } catch (Exception e) {
                           e.printStackTrace();
                       }

                        %>