<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.sun.xml.internal.bind.CycleRecoverable.Context"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.sql.*" %>
<%@ page import="oracle.jdbc.OracleDriver" %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert DETAILS</title>
</head>
<body>
<%!	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet res=null;
	String url="jdbc:oracle:thin:@//localhost:1521/XE";
	String un="system";
	String pw="system";
	
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


<%
	try 
	{	
		pstmt=con.prepareStatement("Insert into Student_details values(ID_SEQ.NEXTVAL,?,?,?,?,?,?,?,?,?)");
		String name=request.getParameter("NAME");
		String abc_id=request.getParameter("ABC_ID");
		String cors=request.getParameter("COURSE");
		String qulf=request.getParameter("QUALIFICATION");
		int yop=Integer.parseInt(request.getParameter("YEAR_OF_PASSOUT"));
		String branch=request.getParameter("BRANCH");		
		long mob=Long.parseLong(request.getParameter("MOBILE_NUMBER"));
		String email=request.getParameter("EMAIL_ID");
		String pass=request.getParameter("PASSWORD");
		
		pstmt.setString(1,name);
		pstmt.setString(2,abc_id);
		pstmt.setString(3,cors);
		pstmt.setString(4,qulf);
		pstmt.setInt(5,yop);
		pstmt.setString(6,branch);
		pstmt.setLong(7,mob);
		pstmt.setString(8,email);
		pstmt.setString(9,pass);
	
		int num=pstmt.executeUpdate();
		if(num>0)
		{
			response.sendRedirect("success.html");
		}
		else
		{
			System.out.println("NO");
		}
		
	}
	catch(SQLException sql)
	{
		request.setAttribute("error", sql);
		out.println(sql);
	}
%>

<%!
	public void jspDestroy() 
	{
		try
		{
			pstmt.close();
			con.close();
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
%>
</body>
</html>