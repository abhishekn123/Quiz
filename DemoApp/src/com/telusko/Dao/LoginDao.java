package com.telusko.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Driver;

public class LoginDao {
	String url="jdbc:mysql://localhost:3306/abc";
	String username="root";
	String password="root";
	String query="select * from student where username=? and password=?";
   public boolean check(String uname,String pass)
   {
	    		try {
	    			System.out.println("Entered to LOGIn Dao.java");
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection(url, username, password);
			PreparedStatement st=con.prepareStatement(query);
			st.setString(1, uname);
			st.setString(2, pass);
			System.out.println("Executing query");
			ResultSet rs=st.executeQuery();
			if(rs.next())
			{		
				return true;
			}
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	    		return false;   
   }
}
