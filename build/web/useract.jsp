<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>
    <%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    try{

    Connection co = null;
    co = databasecon.getconnection();
    String query1="select * from user where flatno='"+username+"' and password='"+password+"'"; 
    Statement st1=co.createStatement();
    ResultSet rs=st1.executeQuery(query1);

    if(rs.next())
    {

    String  user = rs.getString(2);
    String  flatno = rs.getString(8);

    session.setAttribute("user",user);
    System.out.println("User:"+username);
    session.setAttribute("flatno",flatno);


    response.sendRedirect("userhome.jsp?msg=success");
    }
    else 
    {
    response.sendRedirect("user.jsp?m1=Login_Failed");
    %>

    <%
    }
    } catch (Exception e) {
    e.printStackTrace();
    }

    %>