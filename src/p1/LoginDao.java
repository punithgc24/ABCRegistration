package p1;

import java.io.IOException;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginDao {
	
private String uname;
private String pw;
private String name;
private  String pass;
private Connection con;
private PreparedStatement pstm;
private ResultSet res;

public String getUname() {
	return uname;
}
public void setUname(String uname) {
	this.uname = uname;
}
public String getPw() {
	return pw;
}
public void setPw(String pw) {
	this.pw = pw;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getPass() {
	return pass;
}
public void setPass(String pass) {
	this.pass = pass;
}
public LoginDao()
{
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String url = "jdbc:oracle:thin:@//localhost:1521/XE";
		String un ="system";
		String pw ="system";
		con=DriverManager.getConnection(url,un,pw);
	} 
	catch (Exception e) 
	{
		e.printStackTrace();
	} 
}

public boolean loginn()
{
	try
	{
		pstm=con.prepareStatement("select * from STUDENT_ADMIN where NAME=? and PASSWORD=?");
		pstm.setString(1, uname);
		pstm.setString(2, pw);
		res=pstm.executeQuery();
		if(res.next()==true)
		{
			return true;
		}
		
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	return false;
}

public boolean SLogin()
{
	try
	{
		pstm=con.prepareStatement("select * from STUDENT_DETAILS where NAME=? and PASSWORD=?");
		pstm.setString(1,name);
		pstm.setString(2,pass);
		res=pstm.executeQuery();
		if(res.next()==true)
		{
			return true;
		}	
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	return false;
}

}
