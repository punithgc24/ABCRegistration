<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="oracle.jdbc.OracleDriver" %> 
    
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<style>
body, html {
  height: 100%;
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

* {
  box-sizing: border-box;
}

.bg-image {
  background-image: url("studnet.jpg");
  filter: blur(7px);
  -webkit-filter: blur(7px);
  height: 100%; 
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}

.bg-text {
  background-color: rgb(0,0,0); 
  background-color: rgba(0,0,0, 0.4); 
  color: cyan;
  font-size:20px;
  font-weight: bold;
  border: 3px solid black;
  position: absolute;
  top: 60%;
  left:50%;
  transform: translate(-50%, -50%);
  z-index: 2;
  width: 50%;
  padding: 10px;
  text-align: center;
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
#left {
float:left;
}

</style>
</head>
<body>
<div class="bg-image"></div>

<div class= "cont">
	<h1 align="center"><a href="Register.jsp"><img src="0.png" class="img-rounded" width="120" height="120" alt="logo" align="middle" hspace="10"></a></h1>
</div>
<div class= "cont1">
	<h1><marquee width="100%" direction="left" height="100px" SCROLLAMOUNT="8"> <strong><font face = "Times New Roman" size="7" color="mediumspringgreen"> ABC FOR TECHNOLOGY AND TRAINING</font></strong></marquee></h1>
</div>
<div id="left">
<div class="bg-text">
<h1><strong><marquee behavior="alternate" direction="right" scrollamount="20"><font face="Times New Roman" size="7.5" color=red>DRIVE DETAILS!</font></marquee></strong></h1>
	<form  method="post" action="http://localhost:9090/ABCproject/drive_insert.jsp">
	<table align="center">
		<tr>
		<td><label>COMPANY NAME</label></td>
		<td><input type="text" style="background-color:transparent; color:white;" name="COMPANY" required/></td>
		</tr>
		
		<tr>
		<td><label>JOB TITLE</label></td>
		<td><input type="text" style="background-color:transparent; color:white;" name="ROLE" required/></td>
		</tr>
		
		<tr>
		<td><label>STREAMS</label></td>
		<td><input type="text" style="background-color:transparent; color:white;" name="STREAMS" required/></td>
		</tr>
				
		<tr>
		<td><label >YEAR OF PASSING</label></td>
		<td><input type="text" style="background-color:transparent; color:white;" name="YOP" required/></td>
		</tr>
		
		<tr>
		<td><label >PACKAGE</label></td>
		<td><input type="text" style="background-color:transparent; color:white;" name="PACKAGE" required/></td>
		</tr>
		
		<tr>
		<td><label >BOND</label></td>
		<td><input type="text" style="background-color:transparent; color:white;" name="BOND" required/></td>
		</tr>
		
		<tr>
		<td><label>DRIVE VENUE</label></td>
		<td><input type="text" style="background-color:transparent; color:white;" name="VENUE" required/></td>
		</tr>
		
		<tr>
		<td><label>DRIVE DATE</label></td>
		<td><input type="text" style="background-color:transparent; color:white;" name="DATE" required/></td>
		</tr>
		
		<tr>
		<td><label>DRIVE TIME</label></td>
		<td><input type="text" style="background-color:transparent; color:white;" name="TIME" required/></td>
		</tr>
	
	</table>
	<br/>
	<button type="submit" class="btn btn-danger btn-lg">UPDATE</button>	
	</form>
</div>
</div>

</body>
</html>