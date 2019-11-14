package com.telusko.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.http.HttpSession;

public class adminDao 
{

	String url="jdbc:mysql://localhost:3306/abc";
	String username="root";
	String password="root";
	String query="insert into adminstrator values(?,?,?,?,?,?)";
	public boolean  admininsert(int que,String qnum, String question,String op1,String op2,String op3,String op4,String cop)
	{
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection(url, username, password);
			String query2="update adminstrator SET Question="+"'"+question+"'"+",op1="+"'"+op1+"'"+
					",op2="+"'"+op2+"'"+",op3="+"'"+op3+"'"+",op4="+"'"+op4+"'"+"where id="+que;
			System.out.println(query2);
			PreparedStatement st=con.prepareStatement(query2);
			int rs=st.executeUpdate();
			if(rs>0)
			{
				System.out.println("Row inserted sucessfully bro");
				return true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}	
		return false;
	}

}
