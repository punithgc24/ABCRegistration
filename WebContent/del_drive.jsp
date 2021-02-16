<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.* "%>
<%@ page import ="javax.servlet.ServletConfig"%>
<%@ page import ="javax.servlet.*"%>
<%@ page import="oracle.jdbc.OracleDriver" %> 
<%@page import="java.sql.*,java.util.*"%>

<%
String time=request.getParameter("time");
	try
		{
			DriverManager.registerDriver(new OracleDriver());
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/XE", "system","system");
			Statement st=con.createStatement();
			int i=st.executeUpdate(("DELETE FROM DRIVE_DETAILS WHERE time=")+time);
			if(i>0)
			{
				response.sendRedirect("drive_details.jsp");
			}
			else
			{
				System.out.print("NO");
			}
		}
	catch(Exception e)
		{
			e.printStackTrace();
		}
%>