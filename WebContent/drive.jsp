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
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
  <link rel="stylesheet" type="text/css" href="styles.css">
  <title>Drive Page</title>
</head>
<style>
    
@import url('https://fonts.googleapis.com/css?family=Numans');

html,body{
	background-image: url('http://getwallpapers.com/wallpaper/full/a/5/d/544750.jpg');
	position:fixed;
	background-size: cover;
	background-repeat: no-repeat;
	height: 100%;
	font-family: 'Numans', sans-serif;
	width:100%;
}

.ml4 {
  position: relative;
  font-weight: 900;
  font-size: 3.5em;
}
.ml4 .letters {
  position: absolute;

  left: 10px;
  top: 350px;
  right: 0;
  opacity: 0;
  color:red; 
}
.cont{
   position: absolute;
  left: 25px;
  top:5px; 
}

#maincontainer 
{   
top:0px;
padding-top:0;
margin:auto; position:relative;
width:950px;
height:100%;
}

.container1{
margin-top:50px;
margin-left:32%;
color:cyan;
font-size:18px;
}

</style>
<body>
<div id="maincontainer ">
    <h1 class="ml4">
  <span class="letters letters-1"><strong><font>DRIVES</font></strong></span>
  <span class="letters letters-2"><strong><font>ALERT!!</font></strong></span>
  <span class="letters letters-3"><strong><font>GO & ATTEND</font></strong></span>
</h1>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/animejs/2.0.2/anime.min.js"></script>

<div class= "cont"><h1 align="center"><a href="Std_detail.jsp"><img src="0.png" class="img-rounded" width="120" height="120" alt="logo" align="middle" hspace="10" ></a></h1></div>


	<%
{
	try
	{
		stmt=con.createStatement();
		res=stmt.executeQuery("SELECT * FROM DRIVE_DETAILS");
		PrintWriter pw=response.getWriter();
		while(res.next()==true)
		{%>
		 <div class="container1">
		 <h1><strong><font color="white">COMPANY</font></strong></h1>
		 <ul style="list-style-type:square;">
		    <li><strong>
		    <%=res.getString(1)%>,
		    <%=res.getString(2)%>,
		    <%=res.getString(3)%>,
		    <%=res.getString(4)%>,
		    <%=res.getString(5)%>,
		    <%=res.getString(6)%>, 
		    <%=res.getString(7)%>,
		    <%=res.getString(8)%>,
			<%=res.getString(9)%>
			</strong></li>  		
		 </ul>	
 </div>
<% 
		}
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
}
%>
<script>  
    var ml4 = {};
ml4.opacityIn = [0,1];
ml4.scaleIn = [0.2, 1];
ml4.scaleOut = 3;
ml4.durationIn = 800;
ml4.durationOut = 600;
ml4.delay = 500;

anime.timeline({loop: true})
  .add({
    targets: '.ml4 .letters-1',
    opacity: ml4.opacityIn,
    scale: ml4.scaleIn,
    duration: ml4.durationIn
  }).add({
    targets: '.ml4 .letters-1',
    opacity: 0,
    scale: ml4.scaleOut,
    duration: ml4.durationOut,
    easing: "easeInExpo",
    delay: ml4.delay
  }).add({
    targets: '.ml4 .letters-2',
    opacity: ml4.opacityIn,
    scale: ml4.scaleIn,
    duration: ml4.durationIn
  }).add({
    targets: '.ml4 .letters-2',
    opacity: 0,
    scale: ml4.scaleOut,
    duration: ml4.durationOut,
    easing: "easeInExpo",
    delay: ml4.delay
  }).add({
    targets: '.ml4 .letters-3',
    opacity: ml4.opacityIn,
    scale: ml4.scaleIn,
    duration: ml4.durationIn
  }).add({
    targets: '.ml4 .letters-3',
    opacity: 0,
    scale: ml4.scaleOut,
    duration: ml4.durationOut,
    easing: "easeInExpo",
    delay: ml4.delay
  }).add({
    targets: '.ml4',
    opacity: 0,
    duration: 500,
    delay: 500
  });
</script>
</body>
</html>
