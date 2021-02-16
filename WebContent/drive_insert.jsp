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
		pstmt=con.prepareStatement("Insert into DRIVE_DETAILS values(?,?,?,?,?,?,?,?,?)");
		String cmp=request.getParameter("COMPANY");
		String role=request.getParameter("ROLE");
		String strm=request.getParameter("STREAMS");
		String yop=request.getParameter("YOP");
		String pack=request.getParameter("PACKAGE");
		String bon=request.getParameter("BOND");
		String ven=request.getParameter("VENUE");
		String date=request.getParameter("DATE");
		String time=request.getParameter("TIME");

		
		pstmt.setString(1,cmp);
		pstmt.setString(2,role);
		pstmt.setString(3,strm);
		pstmt.setString(4,yop);
		pstmt.setString(5,pack);
		pstmt.setString(6,bon);
		pstmt.setString(7,ven);
		pstmt.setString(8,date);
		pstmt.setString(9,time);
	
		int num=pstmt.executeUpdate();
		if(num>0)
		{
			response.sendRedirect("drive_details.jsp");
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