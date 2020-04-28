<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>
<%@ page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat"%>
    <%
    
    String user = session.getAttribute("user").toString();
    String flatno = session.getAttribute("flatno").toString();
    String description = request.getParameter("description");
    String mobile = request.getParameter("mobile"); 
    String status = "To be Picked";
    String dt=null;
    Date dNow = new Date( );
    SimpleDateFormat date2 = new SimpleDateFormat("yyyy:MM:dd hh:mm:ss");
    dt = date2.format(dNow);
    
    try{
    Connection co = null;
    co = databasecon.getconnection();
    PreparedStatement ps=co.prepareStatement("insert into request(username,flatno,description,mobile,dt,status) values(?,?,?,?,?,?)");

    ps.setString(1,user);
    ps.setString(2,flatno);
    ps.setString(3,description);
    ps.setString(4,mobile);
    ps.setString(5,dt);
    ps.setString(6,status);
    
    int i=ps.executeUpdate();
    if(i>0)
    {
    response.sendRedirect("sendreq.jsp?msg=success");
    }
    else{
    response.sendRedirect("sendreq.jsp?m1=Failed");    
    }
    %>
    <%
    }

    catch(Exception e)
    {
            out.println(e.getMessage());
    }
    %>