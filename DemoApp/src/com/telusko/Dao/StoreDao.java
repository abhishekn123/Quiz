package com.telusko.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class StoreDao 
{
	String url="jdbc:mysql://localhost:3306/abc";
	String username="root";
	String password="root";
	String query="insert into result(username,score) values(?,?)";
	public boolean store(String user,int score) throws SQLException
	{
		Connection con=DriverManager.getConnection(url, username, password);
		PreparedStatement st3=con.prepareStatement(query);
		st3.setString(1, user);
		st3.setInt(2,score);
		int rs=st3.executeUpdate();
		if(rs>0)
		{
			System.out.println("Stored sucessfully");
			return true;
		}
		
		return false;
	}

}
