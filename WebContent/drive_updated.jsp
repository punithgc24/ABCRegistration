<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<%@ page import="oracle.jdbc.OracleDriver" %> 


<%!	
	Connection con = null;
	PreparedStatement pstmt = null;
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
		String name=request.getParameter("COMPANY");
		String rol=request.getParameter("ROLE");
		String strm=request.getParameter("STREAMS");
		String yop=request.getParameter("YOP");
		String pack=request.getParameter("PACKAGE");
		String bon=request.getParameter("BOND");
		String ven=request.getParameter("VENUE");
		String date=request.getParameter("DATE");
		String time=request.getParameter("TIME");
	
		
		if(time!=null)
			{
				String sql="Update DRIVE_DETAILS set COMPANY_NAME=?,JOB_TITLE=?,STREAMS=?,YEAR_OF_PASSING=?,PACKAGE=?,BOND=?,VENUE=?,DRIVE_DATE=?,TIME=? where time="+time;
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1,name);
				pstmt.setString(2,rol);
				pstmt.setString(3,strm);
				pstmt.setString(4,yop);
				pstmt.setString(5,pack);
				pstmt.setString(6,bon);
				pstmt.setString(7,ven);
				pstmt.setString(8,date);
				pstmt.setString(9,time);
				int i = pstmt.executeUpdate();
			if(i > 0)	
				{
					response.sendRedirect("drive_details.jsp");
				}
			else
				{
					out.print("There is a problem in updating Record.");
				}
			}
	}
		
		catch(SQLException sql)
		{
			request.setAttribute("error", sql);
			out.println(sql);
		}
%>
