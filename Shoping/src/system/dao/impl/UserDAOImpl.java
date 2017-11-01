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
	public Userinfo isExist(String phone,String password) {		
		Userinfo userinfos = new Userinfo();
		try{
			con=db.getConnection();
			String sql="select * from userinfo where phone=? and password=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, phone);
			pstmt.setString(2, password);
			rs=pstmt.executeQuery();
		
		    if(rs.next()){
		    	Userinfo userInfo = new Userinfo();
		    	userInfo.setId(rs.getInt("id"));
				userInfo.setUsername(rs.getString("username"));
				userInfo.setPassword(rs.getString("Password"));
				userInfo.setPhone(rs.getString("phone"));
				userInfo.setEmail(rs.getString("email"));
				userInfo.setAddress(rs.getString("address"));
				userInfo.setAddress_o(rs.getString("address_o"));
				userInfo.setAddress_t(rs.getString("address_t"));
				userinfos.setPower(rs.getInt("power"));
				userinfos=userInfo;
				return userinfos;			
		    }	
			if(rs!=null) rs.close();	
		    if(pstmt!=null) pstmt.close();
			if(con!=null) con.close();
		
		}catch(SQLException e){
			e.printStackTrace();
		}				
		return userinfos;
	}
	

}
