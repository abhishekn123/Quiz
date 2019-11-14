package com.telusko;

import java.io.IOException;
import java.io.PrintStream;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.LinkedList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.telusko.Dao.ScoreDao;
import com.telusko.Dao.StoreDao;
import com.telusko.Dao.ComputeDao;

@WebServlet("/Score")
public class Score extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int a[]=new int[10];
      for(int i=1;i<=10;i++)
      {
    	  String get="defaultExampleRadios"+i;
    	 String res = request.getParameter(get);
    	 if(res==null)
    	 {
    		 a[i-1]=0;
    	 }
    	 else
    	 {
    		a[i-1]=Integer.parseInt(res); 
    	 } 	  
      }
      HttpSession session =request.getSession();
       String username = session.getAttribute("username").toString();
       ScoreDao sd=new ScoreDao();
       if(sd.Score(username,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9]))
       {
    	   ComputeDao cd=new ComputeDao();
           try {
	       int result=cd.compute(a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9]);
	          StoreDao std=new StoreDao();
	          System.out.println("computing completed");
	          if(std.store(username,result))
	          {     System.out.println(" Storing completed");
			   	   session.removeAttribute("username");
				   session.invalidate();
				   response.sendRedirect("ThankYou.jsp");
	          }
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}   	  
       }
       else
       {
    	   
    	   System.out.println("Something went wrong with the database Connection 1");
       }
       
       
      
	}

}
