package com.telusko;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.telusko.Dao.LoginDao;

@WebServlet("/Login")
public class Login extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("entered to login.java");
		String uname=request.getParameter("user");
		String pass=request.getParameter("pass");
		System.out.println(uname+""+pass);
		LoginDao  doo=new LoginDao();
		if(uname.equals("admin") && pass.equals("admin"))
		{
			response.sendRedirect("Admin.jsp");
		}
		else if(doo.check(uname,pass))
		{
			System.out.println("entered to Logindao.java");
			HttpSession session=request.getSession();
			session.setAttribute("username",uname);
			response.sendRedirect("Welcome.jsp");			
		}	    
		else
		{
			response.sendRedirect("Login.jsp");
		}
	}

}
