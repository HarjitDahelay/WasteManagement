<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>E-Waste</title>
<meta name="keywords" content="eco green, theme, free templates, website templates, CSS, HTML" />
<meta name="description" content="Eco Green Theme is a free website template provided by tooplate.com" />
<link href="tooplate_style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js" type="text/javascript"></script>
<script src="js/jquery.nivo.slider.js" type="text/javascript"></script>


</head>
    
    <%
       if (request.getParameter("msg") != null) {%>
       <script>alert('Approved');</script>
       <%}%>
       
       <%
       if (request.getParameter("m1") != null) {%>
       <script>alert('Failed');</script>
       <%}%>
    
<body>
    <div id="tooplate_body_wrapper">
    <div id="tooplate_wrapper">
    <div id="tooplate_header">

    <div id="site_title">
        <br/><center><h1>E-WASTE</h1></center></div>

    </div>

    <div id="tooplate_menu">
    <ul>
    <li><a href="adminhome.jsp">Home</a></li>
    <li><a href="viewrequests.jsp" class="current">View Requests</a></li>
    <li><a href="admin.jsp">Logout</a></li>
    </ul>    	
    <div class="cleaner"></div>
    </div> 	
    <div id="tooplate_middle">

    <div id="slider">
    <a href="#"><img src="images/home.jpg" alt=""  /></a>
    </div>
    <div id="intro">
    <h2>E-Waste </h2>
    <p>Electronic waste or e-waste describes discarded electrical or electronic devices. Used electronics which are destined for reuse, resale, salvage, recycling, or disposal are also considered e-waste.</p>
    </div>
    </div>

    <div id="tooplate_main"><span class="tm_top"></span>
    
    <%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>
    
       <%
        try {

    Connection co = null;
    co = databasecon.getconnection();
    String query1="select * from request"; 
    Statement st1=co.createStatement();
    ResultSet rs=st1.executeQuery(query1);
      
    %>
    <center>
        <h2><font color="black" size="5"> View User Requests</font></h2><br/>
       
                    <table border="2" width="80%">

                        <tr style="background-color: #F1CD26">
                            <th><font color="black">Name</th>
                            <th><font color="black">Flat No</th>
                            <th><font color="black">Description</th>
                            <th><font color="black">Mobile No</th>
                            <th><font color="black">Date</th>
                            <th><font color="black">Status</th>
                            <th><font color="black">Approve</th>
                        </tr>

                        <%                while (rs.next()) {
                        %>

    <tr>
        <th><font color="black"><%=rs.getString(1)%></th>
        <th><font color="black"><%=rs.getInt(2)%></th>
         <th><font color="black"><%=rs.getString(3)%></th>
         <th><font color="black"><%=rs.getString(4)%></th>
         <th><font color="black"><%=rs.getString(5)%></th>
         <th><font color="black"><%=rs.getString(6)%></th>
         <th><a href="approve.jsp?name=<%=rs.getString(1)%>&flatno=<%=rs.getInt(2)%>"><font size="3" color="black">Approve</a></th>
       </tr>
            <%
                }
                } catch (Exception e) {
                    e.printStackTrace();
                }

            %>
        </table>    

    <div class="testimonial"><span class="close"></span>
    </div>	 
    </div> 
    <div id="tm_bottom"></div>

    <div id="tooplate_footer">

    </div> 		
    </div> 
    <div class="cleaner"></div>
    </div> 
</body>
</html>