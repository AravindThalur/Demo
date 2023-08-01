package com;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	static String URL="localhost:3306/";
	static String DATABASE_NAME="online_Quiz";
	static String USERNAME="root";
	static String PASSWORD="7795";
	
	public static Connection getConnection(){
		Connection con=null;
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://"+URL+DATABASE_NAME,USERNAME,PASSWORD);
		}catch(Exception e){
			e.printStackTrace();
		}
		return con;
	}
}