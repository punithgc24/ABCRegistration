package p1;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import p1.LoginDao;

public class SLogin extends HttpServlet 
{
	private static final long serialVersionUID = 1L;

    public SLogin()
    {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		HttpSession hs = request.getSession(true);
		String name=request.getParameter("name");
		String pass=request.getParameter("pass");
		hs.setAttribute("name", name);
		hs.setAttribute("pw", pass);
		LoginDao lg=new LoginDao();
		lg.setName(name);
		lg.setPass(pass);
		boolean status=lg.SLogin();
		if(status==true)
		{
			response.sendRedirect("/ABCproject/Std_detail.jsp");
		}
		else
		{
			response.sendRedirect("/ABCproject/std_login.jsp");
		}
	}
}
