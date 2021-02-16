<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.*"%>
<%@ page import="java.sql.* "%>

<%@ page import ="javax.servlet.ServletConfig"%>
<%@ page import ="javax.servlet.*"%>
<%@ page import="oracle.jdbc.OracleDriver" %> 
<%@page import="java.sql.*,java.util.*"%>

<%
String id=request.getParameter("id");
try
	{
		DriverManager.registerDriver(new OracleDriver());
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/XE", "system","system");
		Statement st=con.createStatement();
		int i=st.executeUpdate(("DELETE FROM STUDENT_DETAILS WHERE id=")+id);
		if(i>0)
		{
			response.sendRedirect("student_disp.jsp");
		}
		else
		{
			System.out.print("no");
		}
	}
catch(Exception e)
	{
		e.printStackTrace();
	}
%>