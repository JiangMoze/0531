package com.weikun.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.weikun.db.DB;
import com.weikun.vo.BBSUser;

public class UserDAOImpl implements IUserDAO {
	private Connection conn;
	public UserDAOImpl(){
		conn=DB.getConn();
	}

	@Override
	public boolean login(BBSUser user) {
		// TODO Auto-generated method stub
		String sql="select id from bbsuser where username=? and pwd=?";
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		boolean flag=false;
		try {
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setString(1, user.getUsername());
			pstmt.setString(2, user.getPwd());
			rs=pstmt.executeQuery();
			flag=rs.next();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			if(rs!=null){
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if(pstmt!=null){
				try {
					pstmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			
		}
		
		
		
		return flag;
	}

}
