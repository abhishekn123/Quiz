package com.telusko;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.telusko.Dao.RegisterDao;
@WebServlet("/Register")
public class Register extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String email=request.getParameter("email");
		String password=request.getParameter("pass");
		 RegisterDao rd=new  RegisterDao ();
		 if(rd.Register(email,password)==true);
		 {
			 response.sendRedirect("Login.jsp");
		 }	 
	}
}
