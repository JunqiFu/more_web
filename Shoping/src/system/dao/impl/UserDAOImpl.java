package system.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import system.bean.Userinfo;
import system.db.*;

public class UserDAOImpl {
	
	private Connection con;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private DBcon db;
	//链接数据库
	public UserDAOImpl(){
		db=new DBcon();
	}
	
	//根据手机号码和密码来验证登陆
	public Userinfo isExist(String username,String password) {		
		try{
			con=db.getConnection();
			String sql="select * from userinfo where u_username=? and u_password=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, username);
			pstmt.setString(2, password);
			rs=pstmt.executeQuery();
		
		    if(rs.next()){
		    	Userinfo userInfo = new Userinfo();
		    	userInfo.setId(rs.getInt("u_id"));
				userInfo.setUsername(rs.getString("u_username"));
				userInfo.setPassword(rs.getString("u_Password"));
				userInfo.setPhone(rs.getString("u_phone"));
				userInfo.setEmail(rs.getString("u_email"));
				userInfo.setAddress(rs.getString("u_address"));
				userInfo.setAddress_o(rs.getString("u_address_o"));
				userInfo.setAddress_t(rs.getString("u_address_t"));
				userInfo.setPower(rs.getInt("u_power"));
			   
				return userInfo;			
		    }	
			if(rs!=null) rs.close();	
		    if(pstmt!=null) pstmt.close();
			if(con!=null) con.close();
		
		}catch(SQLException e){
			e.printStackTrace();
		}				
		return null;
	}
	

}
