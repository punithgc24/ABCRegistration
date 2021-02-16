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
		
		String name=request.getParameter("NAME");
		System.out.println(name);
		String abc_id=request.getParameter("ABC_ID");
		System.out.println(abc_id);
		String cors=request.getParameter("COURSE");
		System.out.println(cors);
		String qulf=request.getParameter("QUALIFICATION");
		System.out.println(qulf);
		System.out.println("The data at yop is:   "+request.getParameter("YEAR_OF_PASSOUT"));
		int yop=Integer.parseInt(request.getParameter("YEAR_OF_PASSOUT"));
		System.out.println(yop);
		System.out.println();
		String branch=request.getParameter("BRANCH");		
		System.out.println(branch);
		long mob=Long.parseLong(request.getParameter("MOBILE_NUMBER"));
		System.out.println(mob);
		String email=request.getParameter("EMAIL_ID");
		System.out.println(email);
		String pass=request.getParameter("PASSWORD");
		System.out.println(pass);
	
		if(abc_id!= null)
			{
				String sql=(("Update STUDENT_DETAILS set NAME='?',COURSE=?,QUALIFICATION=?,YEAR_OF_PASSOUT=?,BRANCH=?,MOBILE_NUMBER=?,EMAIL_ID=?,PASSWORD=? where ABC_ID=")+abc_id);
				System.out.println(name +" processing");

				System.out.print(name);pstmt.setString(1,name);
				System.out.println(name +" success");
				System.out.println(cors +" processing");

				pstmt.setString(2,cors);
				pstmt.setString(3,qulf);
				pstmt.setInt(4,yop);
				pstmt.setString(5,branch);
				pstmt.setLong(6,mob);
				pstmt.setString(7,email);
				pstmt.setString(8,pass);
				int i = pstmt.executeUpdate();
			if(i > 0)	
				{
					response.sendRedirect("student_disp.jsp");
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
