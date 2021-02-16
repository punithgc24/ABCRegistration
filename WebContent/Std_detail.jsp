<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<%@ page import="oracle.jdbc.OracleDriver" %> 


<%!	
	Connection con = null;
	PreparedStatement stmt = null;
	String url="jdbc:oracle:thin:@//localhost:1521/XE";
	String un="System";
	String pw="system";
	ResultSet res=null;
	
	public void jspInit()
	{
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(url, un, pw);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
%>	
<% try
	{
		
		String name=(String)session.getAttribute("name");
		String password= (String) session.getAttribute("pw");
	    String query="SELECT * FROM student_details where name=? and password=?";
		stmt=con.prepareStatement(query);
		stmt.setString(1,name);
		stmt.setString(2,password);
		res=stmt.executeQuery();
		while(res.next()==true)
		{%>
		
<!DOCTYPE html>

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script> 
  	<script src="js/bootstrap.min.js"></script>
<style>
#left {
float:left;
padding:20px;
}

#right {
float:right;
padding:20px;
}
body, html {
  height: 100%;
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

* {
  box-sizing: border-box;
}

.bg-image {
  background-image: url("bbb.jpg");
  filter: blur(8px);
  -webkit-filter: blur(8px);
  height: 100%; 
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}

.bg-text {

  background-color: rgb(0,0,0);
  background-color: rgba(0,0,0, 0.4); 
  color: white;
  font-weight: bold;
  border: 3px solid #f1f1f1;
  position: absolute;
  top: 60%;
  left: 30%;
  transform: translate(-50%, -50%);
  z-index: 2;
  width: 35%;
  padding: 20px;
  text-align: center;
  
}
.bg-text1 {
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0, 0.4); /* Black w/opacity/see-through */
  color: springgreen;
  font-weight: bold;
  border: 3px solid #f1f1f1;
  position: absolute;
  top: 50%;
  left: 75%;
  transform: translate(-50%, -50%);
  z-index: 2;
  width:35%;
  padding:10px;
  text-align:center;
  }
  .cont{
   position: absolute;
  left: 0px;
  top:10px;
}

.sign-out{
	position: absolute;
	right: 20px;
	top:50px;
}
.btn-sign_out {
  background-color: Red; /* Blue background */
  border: none; /* Remove borders */
  color: white; /* White text */
  padding: 12px 16px; /* Some padding */
  font-size: 16px; /* Set a font size */
  cursor: pointer; /* Mouse pointer on hover */
}

/* Darker background on mouse-over */
.btn-sign_out:hover {
  background-color: black;
} 
</style>
</head>
<body>
<div class="bg-image"></div>
<div class= "cont"><h1 align="center"><a href="std_login.jsp"><img src="0.png" class="img-rounded" width="120" height="120" alt="logo" align="middle" hspace="10"></a></h1>
  </div>

<div class="sign-out">
<form action="std_login.jsp">
<button class="btn-sign_out"><i class="fa fa-sign-out"> Logout</i></button>
</form>
</div>  
  
<div class="bg-text">
<div id="left">
 <h1>YOUR DETAILS</h1>
<table>	
<tr>
	<td><label><font face="Verdana" size="4" color="mistyrose">NAME</font></label></td>
	<td><input type="text" style="background-color:Black; color:Lime;" name="NAME" disabled value="<%=res.getString("NAME") %>"/></td>
</tr>
<tr>
	<td><label><font face="Verdana" size="4" color="mistyrose">ABC-ID</font></label></td>
	<td><input type="text" style="background-color:Black; color:Lime;" name="IDN" disabled value="<%=res.getString("ABC_ID") %>"/></td>
</tr>
<tr>
	<td><label><font face="Verdana" size="4" color="mistyrose">COURSE</font></label></td>
	<td><input type="text" style="background-color:Black; color:Lime;" name="COURSE" disabled value="<%=res.getString("COURSE") %>"/></td>
</tr>	
<tr>
	<td><label><font face="Verdana" size="4" color="mistyrose">QUALIFICATION</font></label></td>
	<td><input type="text" style="background-color:Black; color:Lime;" name="QUALIFICATION" disabled value="<%=res.getString("QUALIFICATION") %>"></td>
</tr>
<tr>
	<td><label><font face="Verdana" size="4" color="mistyrose">YEAR OF PASSOUT</font></label></td>
	<td><input type="text" style="background-color:Black; color:Lime;" name="YEAR OF PASSING" disabled value="<%=res.getInt("YEAR_OF_PASSOUT") %>"/></td>
</tr>
<tr>
	<td><label><font face="Verdana" size="4" color="mistyrose">BRANCH</font></label></td>
	<td><input type="text" style="background-color:Black; color:Lime;" name="AGE" disabled value="<%=res.getString("BRANCH") %>"/></td>
</tr>	
<tr>
	<td><label><font face="Verdana" size="4" color="mistyrose">MOBILE NUMBER</font></label></td>
	<td><input type="text" style="background-color:Black; color:Lime;" name="MOBILE NUMBER" disabled value="<%=res.getLong("MOBILE_NUMBER") %>"/></td>
</tr>
<tr>
	<td><label><font face="Verdana" size="4" color="mistyrose">EMAIL-ID</font></label></td>
	<td><input type="text" style="background-color:Black; color:Lime;" name="EMAIL" disabled value="<%=res.getString("EMAIL_ID") %>"/></td>
</tr>
<tr>
	<td><label><font face="Verdana" size="4" color="mistyrose">PASSWORD</font></label></td>
	<td><input type="text" style="background-color:Black; color:Lime;" name="Password" disabled value="<%=res.getString("PASSWORD") %>"/></td>
</tr>
</table>
</div>
</div>
<% 
		}
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}

%>

<div class="bg-text1">
<div id="right">
<form action="http://localhost:9090/ABCproject/drive.jsp">
<h1 align="center"><strong>Click below for Drive UPDATES</strong></h1>
<br/>
<input type="submit" class="btn btn-danger btn-lg" value="DRIVES!!!!"/>
</form>
</div>
</div>

</body>
</html>