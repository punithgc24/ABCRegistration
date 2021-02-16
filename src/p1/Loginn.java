package p1;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import p1.LoginDao;

public class Loginn extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Loginn() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String uname=request.getParameter("uname");
		String pw=request.getParameter("pw");
		LoginDao lg=new LoginDao();
		lg.setUname(uname);
		lg.setPw(pw);
		boolean status=lg.loginn();
		if(status==true)
		{
			response.sendRedirect("/ABCproject/Register.jsp");
		}
		else
		{
			response.sendRedirect("/ABCproject/Admin.html");
		}
	}
}

