package com.telusko.Dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class correctDao
{

	String url="jdbc:mysql://localhost:3306/abc";
	String username="root";
	String password="root";

	public boolean cinsert(int question,String cop)
	{
		String que="QUESTION"+question;
		String pass=""+que;
		String query="update answers SET QUESTION"+question+"="+"'"+cop+"'"+"where id=1 AND username='admin'";
		System.out.println(query);
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection(url, username, password);
			PreparedStatement st=con.prepareStatement(query);
			System.out.println("enterded to update");
			int rs=st.executeUpdate();
			if(rs>0)
			{
				System.out.println("completed");
				return true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}	
		System.out.println("unexpected termination");
		return false;
	}

}