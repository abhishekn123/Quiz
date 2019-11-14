package com.telusko.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class RegisterDao 
{
	String url="jdbc:mysql://localhost:3306/abc";
	String username="root";
	String password="root";
	String query="insert into student values(?,?)";
	public boolean Register(String email, String pass)
	{
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection(url, username, password);
			PreparedStatement st=con.prepareStatement(query);
			st.setString(1, email);
			st.setString(2, pass);
			int rs=st.executeUpdate();
			if(rs>0)
			{
				System.out.println("Row inserted");
				return true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}	
		return false;
	}

}
