<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>
    <%
    
    String name = request.getParameter("name");
    String flatno = request.getParameter("flatno");
    
   
    
    try{
    Connection co = null;
    co = databasecon.getconnection();
    
    PreparedStatement ps=co.prepareStatement("update request set status = 'approved' where username = '"+name+"' and flatno = '"+flatno+"' ");
    int i=ps.executeUpdate();
    if(i>0)
    {
    response.sendRedirect("viewrequests.jsp?msg=success");
    }
    else{
    response.sendRedirect("viewrequests.jsp?m1=Failed");    
    }
    %>
    <%
    }

    catch(Exception e)
    {
            out.println(e.getMessage());
    }
    %>