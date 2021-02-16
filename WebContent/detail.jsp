<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="oracle.jdbc.OracleDriver" %> 

<%
String name = request.getParameter("name");
String url="jdbc:oracle:thin:@//localhost:1521/XE";
String un="system";
String pw="system";
try {
	DriverManager.registerDriver(new OracleDriver());
}
catch (Exception e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{
connection = DriverManager.getConnection(url, un, pw);
statement=connection.createStatement();
String sql ="select * from STUDENT_DETAILS where name="+name;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
    
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
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
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  z-index: 2;
  width: 80%;
  padding: 20px;
  text-align: center;
}
</style>
</head>
<body>
<div class="bg-image"></div>
<div class="bg-text">
 
<table>	
<tr>
	<td><label><font face="Verdana" size="4" color="mistyrose">NAME</font></label></td>
	<td><input type="text" style="background-color:Black; color:Lime;" name="NAME" value="<%=resultSet.getString("NAME") %>"/></td>
</tr>
<tr>
	<td><label><font face="Verdana" size="4" color="mistyrose">IDN</font></label></td>
	<td><input type="text" style="background-color:Black; color:Lime;" name="IDN" disabled value="<%=resultSet.getString("IDN") %>"/></td>
</tr>	
<tr>
	<td><label><font face="Verdana" size="4" color="mistyrose">PASSWORD</font></label></td>
	<td><input type="text" style="background-color:Black; color:Lime;" name="Password" value="<%=resultSet.getString("Password") %>"/></td>
</tr>
<tr>
	<td><label><font face="Verdana" size="4" color="mistyrose">AGE</font></label></td>
	<td><input type="text" style="background-color:Black; color:Lime;" name="AGE" value="<%=resultSet.getInt("AGE") %>"/></td>
</tr>	
<tr>
	<td><label><font face="Verdana" size="4" color="mistyrose">QUALIFICATION</font></label></td>
	<td><input type="text" style="background-color:Black; color:Lime;" name="QUALIFICATION" value="<%=resultSet.getString("QUALIFICATION") %>"></td>
</tr>	
<tr>
	<td><label><font face="Verdana" size="4" color="mistyrose">COURSE</font></label></td>
	<td><input type="text" style="background-color:Black; color:Lime;" name="COURSE" value="<%=resultSet.getString("COURSE") %>"/></td>
</tr>
<tr>
	<td><label><font face="Verdana" size="4" color="mistyrose">YEAR OF PASSING</font></label></td>
	<td><input type="text" style="background-color:Black; color:Lime;" name="YEAR OF PASSING" value="<%=resultSet.getInt("YEAR_OF_PASSING") %>"/></td>
</tr>	
<tr>
	<td><label><font face="Verdana" size="4" color="mistyrose">MOBILE NUMBER</font></label></td>
	<td><input type="text" style="background-color:Black; color:Lime;" name="MOBILE NUMBER" value="<%=resultSet.getInt("MOBILE_NUMBER") %>"/></td>
</tr>
</table>
</div>
</body>
</html>
<%
}
	connection.close();
} 
catch (Exception e) 
{
	e.printStackTrace();
}
%>