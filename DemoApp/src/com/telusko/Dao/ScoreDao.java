package com.telusko.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ScoreDao 
{
	String url="jdbc:mysql://localhost:3306/abc";
	String username="root";
	String password="root";
	String query="insert into score values(?,?,?,?,?,?,?,?,?,?,?)";
	public boolean Score(String user,int q1,int q2,int q3,int q4,int q5,int q6,int q7,int q8,int q9,int q10)
	{
		int score=0;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection(url, username, password);
			PreparedStatement st=con.prepareStatement(query);
			st.setString(1, user);
			st.setInt(2,q1);
			st.setInt(3,q2);
			st.setInt(4,q3);
			st.setInt(5,q4);
			st.setInt(6,q5);
			st.setInt(7,q6);
			st.setInt(8,q7);
			st.setInt(9,q8);
			st.setInt(10,q9);
			st.setInt(11,q10);
			int rs=st.executeUpdate();
			if(rs>0)
			{
				System.out.println("Row inserted");
				return true;
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return false;
	}
}
