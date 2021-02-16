<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="javax.servlet.http.HttpServletRequest" %>
<%@page import="javax.servlet.http.HttpServletResponse" %>
<%@page import="javax.servlet.http.HttpServlet" %>
<%@page import="javax.servlet.ServletException" %>
<%@page import="oracle.jdbc.driver.OracleDriver" %>
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%@page import="java.io.IOException" %>

<%!
   	String url="jdbc:oracle:thin:@//localhost:1521/XE";
	String un="system";
	String pw="system";
	
	Connection con=null;
	Statement stmt=null;
	ResultSet res=null;
	
%>	

<%!
	public void jspInit()
	{
		try 
		{	
			Class.forName("oracle.jdbc.driver.OracleDriver");
		}
		catch(ClassNotFoundException e)
		{
			e.printStackTrace();;
		}
		try
		{
			con=DriverManager.getConnection(url,un,pw);
		}
		catch(Exception e)
		{	
			e.printStackTrace();
		}
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Drive details</title>
</head>
<head>
	<title>main</title>
	<link href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" rel="stylesheet"/>

	<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script> 
  	<script src="js/bootstrap.min.js"></script>
  	<script>
	$(document).ready(function(){
	  $("#myInput").on("keyup", function() {
	    var value = $(this).val().toLowerCase();
	    $("#myTable tr").filter(function() {
	      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
	    });
	  });
	});
	
	anime.timeline({loop: true})
	  .add({
	    targets: '.ml15 .word',
	    scale: [14,1],
	    opacity: [0,1],
	    easing: "easeOutCirc",
	    duration: 800,
	    delay: function(el, i) {
	      return 800 * i;
	    }
	  }).add({
	    targets: '.ml15',
	    opacity: 0,
	    duration: 1000,
	    easing: "easeOutExpo",
	    delay: 1000
	  });
	
	</script>
  <script>
window.onscroll = function() {myFunction()};

var header = document.getElementById("myHeader");
var sticky = header.offsetTop;

function myFunction() {
  if (window.pageYOffset > sticky) {
    header.classList.add("sticky");
  } else {
    header.classList.remove("sticky");
  }
}
</script>
 <style>

	body, html {
	  height: 100%;
	  margin: 0;
	  width:100%;
	}

	 .bg-image {
	  background-image: url("table.jpg");
  	  height: 100%;
  	  filter:blur(8px); 
  	  -webkit-filter: blur(8px); 
	  background-position: center;
	  background-repeat: no-repeat;
	  background-size: cover; 
	} 
	
	 .bg-text{
	  font-family: "Times New Roman";
	  font-size:20px;
	  color: black;
	  font-weight:bold;
	  transform: translate(-51%, -46%);
	  z-index:3;
	  top:44%;
	  left:50%;
	  position: absolute;
	  font-weight: bold;
	  text-align:center;
	  width: 100%;
 	  height: 100%;
	}
	
	.cont1{
   position: absolute;
   top: 50px;
   bottom:575px;
   left: 130px;
   right:0px;
   background-color:rgb(0,0,0);
   background-color:rgb(0,0,0,0.4);
}
	
.cont{
   position: absolute;
  top:5px;
}	 

.pos {
position: absolute;
top:250px;
}

	.pos1 {
	position: absolute;
	top:175px;
	right:10%;	
	}	
#style-14::-webkit-scrollbar-track
{
	-webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.8);
	background-color: mediumblue;
}

#style-14::-webkit-scrollbar
{
	width: 8px;
	height:8px;
	background-color: #F5F5F5;
	background-color: #F5F5F5;
}
#style-14::-webkit-scrollbar
{
	height:8px;
	background-color: #F5F5F5;
}

#style-14::-webkit-scrollbar-thumb
{
	background-color: crimson;
	background-image: -webkit-linear-gradient(90deg,
	                                          rgba(0, 0, 0, 1) 0%,
											  rgba(0, 0, 0, 1) 25%,
											  transparent 100%,
											  rgba(0, 0, 0, 1) 75%,
											  transparent)
}

table, td, th {  
  border-color:1px black;
  text-align: center;
}

table {
  background-color:	white;
  border-collapse: collapse;
  width: 100%;
  height:100%;
}

th, td {
  padding: 15px;
}

.log {
  background-color: rgb(0,0,0);
  background-color: rgba(0,0,0, 0.7); 
  color: black;
  font-weight: bold;
  border: 3px solid #f1f1f1;
  position: absolute;
  top: 103%;
  left: 25%;
  transform: translate(-50%, -50%);
  z-index: 2;
  width:35%;
  padding:10px;
  text-align:center;
  }  
  .header {
  padding:10px;
  background: transparent;
  color: white;
}
.sticky {
  position: fixed;
  top: 0;
  width: 100%;
}

.sticky + .content {
  padding-top: 50px;
}
</style>	 
</head>

<body>
	<div class="bg-image"></div>
	<div class= "cont">
		<h1 align="center"><a href="FrontPage.html"><img src="0.png" class="img-rounded" width="120" height="120" alt="logo" align="middle" hspace="10"/></a></h1>
	</div>
	<div class= "cont1">
 		<h1><marquee width="100%" direction="left" height="100px" SCROLLAMOUNT="8"> <strong><font face = "Times New Roman" size="7" color="cyan"> ABC FOR TECHNOLOGY & TRAINING</font></strong></marquee></h1>
	</div>
	<div class="bg-text">
 	<script src="https://cdnjs.cloudflare.com/ajax/libs/animejs/2.0.2/anime.min.js"></script>
	
	<div class="pos1">
	<p align="center"><strong><font face="verdana"size="5" color="black">REGISTERED STUDENTS</font></strong></p>
	<input class="form-control" id="myInput" type="text" placeholder="Search.." style="width:15%; color:navy; float:right">
	<br>
	<div class="scrollbar" id="style-14"style="height:400px;width:1150px;overflow:scroll;overflow-x:scroll;overflow-y:scroll;"> 
    <table class="header" id="myHeader">
    <thead>
      <tr>
      	<th scope="col">ID_NO</th>
        <th scope="col">NAME</th>
        <th scope="col">ABC_ID</th>
        <th scope="col">COURSE</th>
        <th scope="col">QUALIFICATION</th>
        <th scope="col">YEAR_OF_PASSOUT</th>
        <th scope="col">BRANCH</th>
		<th scope="col">MOBILE_NUMBER</th>        
        <th scope="col">EMAIL_ID</th>
        <th scope="col">PASSWORD</th>
        <th scope="col" colspan="2" align="center">OPERATIONS</th>
      </tr>
    </thead>

<%
{
	try
	{
		stmt=con.createStatement();
		res=stmt.executeQuery("SELECT * FROM STUDENT_DETAILS");
		PrintWriter pw=response.getWriter();
		while(res.next()==true)
		{%>
		<tbody id="myTable">
		 <tr>
		 	<td><%=res.getInt(1)%></td>
		    <td><%=res.getString(2)%></td> 
		    <td><%=res.getString(3)%></td>
		    <td><%=res.getString(4)%></td>
		    <td><%=res.getString(5)%></td>
		    <td><%=res.getInt(6)%></td>
		    <td><%=res.getString(7)%></td>
		    <td><%=res.getLong(8)%></td>
		    <td><%=res.getString(9)%></td>
		    <td><%=res.getString(10)%></td>   		
			<td><a href="Delete.jsp?id=<%=res.getInt("id") %>"><button type="button" class="btn btn-danger"><i class="glyphicon glyphicon-trash"></i> Delete</button></a></td>
		    <td><a href="Update.jsp?id=<%=res.getInt("id") %>"><button type="button" class="btn btn-primary"><i class="glyphicon glyphicon-refresh"></i>UPDATE</button></a></td>
		 </tr>
		 </tbody>	
 
<% 
		}
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
}
%>
</table>
</div>
</div>
</div>		
</body>
</html>

<%!
	public void jspDestroy()
	{
		try
		{	
			stmt.close();
			con.close();
		}
	
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}	
%>



	

	
	
	
	