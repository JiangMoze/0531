package com.weikun.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/*
 * 
 * �������ݿ⣬����connection����
 */
public class DB {
	public static Connection conn;
	public static Connection getConn(){
		
		try {
			
			Class.forName("org.gjt.mm.mysql.Driver");
			
			conn=DriverManager.getConnection("jdbc:mysql://192.168.1.146:3306/test?useUnicode=true&characterEncoding=utf-8", "root", "root");
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		
		return conn;
	}
	public static void closeConn(){
		if(conn!=null){
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
}
