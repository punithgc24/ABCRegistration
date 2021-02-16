<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="oracle.jdbc.OracleDriver" %> 

<%
String id= request.getParameter("id");
String url="jdbc:oracle:thin:@//localhost:1521/XE";
String un="system";
String pw="system";
try {
	DriverManager.registerDriver(new OracleDriver());
	}

catch (Exception e)
{
	e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet res = null;
%>
<%
try
{
	connection = DriverManager.getConnection(url, un, pw);
	statement=connection.createStatement();
	String sql =(("select * from STUDENT_DETAILS where id="+id));
	res = statement.executeQuery(sql);
	while(res.next()){
%>


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
	<h1 align="center"><img src="0.png" class="img-rounded" width="120" height="120" alt="logo" align="middle" hspace="10"></h1>
</div>
<div class= "cont1">
	<h1><marquee width="100%" direction="left" height="100px" SCROLLAMOUNT="8"> <strong><font face = "Times New Roman" size="7" color="mediumspringgreen"> ABC FOR TECHNOLOGY AND TRAINING</font></strong></marquee></h1>
</div>
<div id="left">
<div class="bg-text">
<h1><strong><marquee behavior="alternate" direction="right" scrollamount="20"><font face="Times New Roman" size="7.5" color=red>UPDATE HERE!</font></marquee></strong></h1>

	<form  method="post" action="http://localhost:9090/ABCproject/Updated.jsp">
	<table>	
<tr>
	<td><label><font face="Verdana" size="4" color="mistyrose">NAME</font></label></td>
	<td><input type="text" style="background-color:Black; color:Lime;" name="NAME" value="<%=res.getString("NAME") %>"/></td>
</tr>
<tr>
	<td><label><font face="Verdana" size="4" color="mistyrose">ABC_ID</font></label></td>
	<td><input type="text" style="background-color:Black; color:Lime;" name="ABC_ID"  value="<%=res.getString("ABC_ID") %>"/></td>
</tr>
<tr>
		<td><label><font face="Verdana" size="4" color="mistyrose">COURSE</font></label></td>
		<td><select style="background-color:Black; color:Lime; width:267px;height:35px;" name="COURSE" required>
			<option><%=res.getString("COURSE") %></option>
			<option>JAVA AND TESTING</option>
			<option>JAVA AND PYTHON</option>
			<option>JAVA,PYTHON AND TESTING</option>
			<option>FULL STACK</option>
		</select></td>
		</tr>	
<tr>
	<td><label><font face="Verdana" size="4" color="mistyrose">QUALIFICATION</font></label></td>
	<td><input type="text" style="background-color:Black; color:Lime;" name="QUALIFICATION"  value="<%=res.getString("QUALIFICATION") %>"></td>
</tr>
<tr>
	<td><label><font face="Verdana" size="4" color="mistyrose">YEAR OF PASSOUT</font></label></td>
	<td><input type="text" style="background-color:Black; color:Lime;" name="YEAR_OF_PASSOUT"  value="<%=res.getInt("YEAR_OF_PASSOUT") %>"/></td>
</tr>
<tr>
		<td><label><font face="Verdana" size="4" color="mistyrose">BRANCH</font></label></td>
		<td><select style="background-color:Black; color:Lime;width:267px;height:35px;" name="BRANCH" required>
			<option><%=res.getString("BRANCH") %></option>
			<option>CS</option>
			<option>IS</option>
			<option>EC</option>
			<option>ME</option>
			<option>CV</option>
			<option>TC</option>
			<option>N/A</option>
		</select></td>
		</tr>	
<tr>
	<td><label><font face="Verdana" size="4" color="mistyrose">MOBILE NUMBER</font></label></td>
	<td><input type="text" style="background-color:Black; color:Lime;" name="MOBILE_NUMBER"  value="<%=res.getLong("MOBILE_NUMBER") %>"/></td>
</tr>
<tr>
	<td><label><font face="Verdana" size="4" color="mistyrose">EMAIL-ID</font></label></td>
	<td><input type="text" style="background-color:Black; color:Lime;" name="EMAIL_ID"  value="<%=res.getString("EMAIL_ID") %>"/></td>
</tr>
<tr>
	<td><label><font face="Verdana" size="4" color="mistyrose">PASSWORD</font></label></td>
	<td><input type="text" style="background-color:Black; color:Lime;" name="PASSWORD"  value="<%=res.getString("PASSWORD") %>"/></td>
</tr>
</table>
	<br/>
	<button type="submit" class="btn btn-danger btn-lg">UPDATE</button>	
	</form>
</div>
</div>

<%
}
	connection.close();
} 
catch (Exception e) 
{
	e.printStackTrace();
}
%>
</body>
</html>