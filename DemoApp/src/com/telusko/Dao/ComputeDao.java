package com.telusko.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ComputeDao {
	String url="jdbc:mysql://localhost:3306/abc";
	String username="root";
	String password="root";
	
public int compute(int q1,int q2,int q3,int q4,int q5,int q6,int q7,int q8,int q9,int q10) throws SQLException, ClassNotFoundException
{
	String a="admin";
	String query="select * from answers where username='adminstrator'";
	int result=0;	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection(url, username, password);
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery(query);
	rs.next();
	int qd1,qd2,qd3,qd4,qd5,qd6,qd7,qd8,qd9,qd10=0;
	System.out.println("Started");	
	String name=rs.getString(1);
	 qd1=rs.getInt(2);
	 qd2=rs.getInt(3);
	 qd3=rs.getInt(4);
	System.out.println("running1");
     qd4=rs.getInt(5);
     qd5=rs.getInt(6);
	 qd6=rs.getInt(7);
	 qd7=rs.getInt(8);
	 qd8=rs.getInt(9);
	 qd9=rs.getInt(10);
	 qd10=rs.getInt(11);
	System.out.println("running2");
	System.out.println(qd1+""+qd2+""+""+qd10);
	System.out.println("computing");
	if(qd1==q1)
	{
		result=result+1;
	}
	if(qd2==q2)
	{
		result=result+1;
	}
	if(qd3==q3)
	{
		result=result+1;
	}
	if(qd4==q4)
	{
		result=result+1;
	}
	if(qd5==q5)
	{
		result=result+1;
	}
	if(qd6==q6)
	{
		result=result+1;
	}
	if(qd7==q7)
	{
		result=result+1;
	}
	if(qd8==q8)
	{
		result=result+1;
	}
	if(qd9==q9)
	{
		result=result+1;
	}
	if(qd10==q10)
	{
		result=result+1;
	}
	System.out.println("terminated");
	return result;
}

}
