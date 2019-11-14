package com.telusko;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.telusko.Dao.adminDao;
import com.telusko.Dao.correctDao;

@WebServlet("/adminstrator")
public class adminstrator extends HttpServlet {
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException ,NullPointerException{
		String qnum=request.getParameter("qselect").toString(); 
		String question =request.getParameter("question").toString();
		String op1=request.getParameter("op1").toString();
		String op2=request.getParameter("op2").toString();
		String op3=request.getParameter("op3").toString();
		String op4=request.getParameter("op4").toString();
		String cop=request.getParameter("cselect").toString();
		int que=0;
		if(qnum.equals("QUESTION10"))
		{
			que=10;
		}
		else
		{
		char c=qnum.charAt(qnum.length()-1);
		que=Character.getNumericValue(c);
		}		
		System.out.println(que+""+question+""+op1+""+op2+""+op3+""+op4+""+cop);
		
		 adminDao ad=new  adminDao();
		 correctDao cd=new correctDao();
		 if(ad.admininsert(que,qnum,question,op1,op2,op3,op4,cop)==true);
		 {
			 if(cd.cinsert(que,cop))
			 {
			 response.sendRedirect("Questions.jsp");
			 }
		 }	
	}

}
