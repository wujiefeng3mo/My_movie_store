package com.sp.model;
import java.sql.*;
/**
 * 
 * @author Jiefeng Wu
 *	This is a model and used to link the database
 */
public class ConnDB {

	private Connection ct=null;
	
	public Connection getConn(){
		String usr = "postgres";
		String pwd = "1234";
		String url = "jdbc:postgresql://localhost:5432/mystore";
		try {
			
			Class.forName("org.postgresql.Driver");
			ct = DriverManager.getConnection(url, usr, pwd);
			
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		
		return ct;
	}
}
