﻿<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
    <script>alert('Request Sent');</script>
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
    <li><a href="userhome.jsp">Home</a></li>
    <li><a href="sendreq.jsp" class="current">Send Request</a></li>
    <li><a href="viewstatus.jsp">View Status</a></li>
    <li><a href="user.jsp">Logout</a></li>
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
         
    <%
    String flatno = session.getAttribute("flatno").toString();
    %> 
    
    <p align="justify">
    <center><p><font color="black" size="5"> Send Request</font></p></center><br/>
    <form action="sendreqact.jsp" method="post">
    <center><table width="321">
    <tr>
    <td width="191" height="43"><font color="black">Flat No </td>
    <td width="218"><input name="flatno" readonly="" value="<%=flatno%>" /></td>
    </tr>
    <tr>
    <td height="43"><font color="black">Description </td>
    <td width="218"><textarea rows="3" cols="19" name="description" > </textarea></td>
    </tr>
    <tr>
    <td height="43"><font color="black">Mobile No</td>
    <td width="218"><input type="text" name="mobile" required="" placeholder="Mobile No" /></td>
    </tr>
            
    <tr>
    <td height="43" rowspan="3">
    <p>&nbsp;</p></td>
    <td align="left" valign="middle"> <p>&nbsp;
    </p>
    <p>
    <input name="submit" type="submit" value="SEND REQUEST" />
    </p>
    <div align="right">
    </div></td>
    </tr>
    </table>
    </form>
    </p> 

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