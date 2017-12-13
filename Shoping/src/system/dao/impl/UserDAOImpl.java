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
	
	//根据用户名和密码来进行登录验证
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
				userInfo.setSex(rs.getInt("u_sex"));
				userInfo.setName(rs.getString("u_name"));
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
	/**
	 * 增加用户信息（注册）
	 * @param UserInfo userInfo
	 * @return false 表示用户已存在,增加失败
	 */	
	public boolean addUserInfo(Userinfo userInfo){
		
		String account=userInfo.getUsername();
		UserDAOImpl userInfoDao=new UserDAOImpl();
		if(userInfoDao.checkUsername(account)){
			System.out.println("该用户已存在，增加信息失败！！！");
			return false;
		}else{
				try {
					con=db.getConnection();
					String sqlserver="insert into userinfo (u_id,u_username,u_password,u_name,u_phone,u_email,u_sex,u_power) values(?,?,?,?,?,?,?,?)";
					pstmt=con.prepareStatement(sqlserver);
					pstmt.setInt(1, userInfo.getId());
					pstmt.setString(2, userInfo.getUsername());
					pstmt.setString(3, userInfo.getPassword());
					pstmt.setString(4, userInfo.getName());
					pstmt.setString(5, userInfo.getPhone());
					pstmt.setString(6, userInfo.getEmail());
					pstmt.setInt(7, userInfo.getSex());
					pstmt.setInt(8, userInfo.getPower());
					pstmt.executeUpdate();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return true;	
		}
			
	}
	/**
	 * 查询用户是否存在
	 * 若存在，则返回true 反之则反
	 */
	public boolean checkUsername(String account){
		try {
			con=db.getConnection();
			String sql="select * from userinfo where u_username=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, account);
			rs=pstmt.executeQuery();
			if(rs.next()){
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
	//根据用户名获取用户信息
		public Userinfo getUserInfoByUsername(String account){
			Userinfo userInfo =new Userinfo();
			try{
				con = db.getConnection();
				String sql ="select * from userinfo where u_username=?";
						pstmt = con.prepareStatement(sql);
				pstmt.setString(1, account);
				
				rs = pstmt.executeQuery();
				
				while(rs.next()){
					
					userInfo.setId(rs.getInt("u_id"));
					userInfo.setUsername(rs.getString("u_username"));
					userInfo.setPassword(rs.getString("u_password"));
					userInfo.setName(rs.getString("u_name"));
					userInfo.setSex(rs.getInt("u_sex"));
					userInfo.setPhone(rs.getString("u_phone"));
					userInfo.setEmail(rs.getString("u_email"));
					userInfo.setPower(rs.getInt("u_power"));
					userInfo.setPasswordAnswer(rs.getString("u_passwordAnswer"));
					userInfo.setPasswordQuestion(rs.getString("u_passwordQuestion"));
				}
				
				
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (con != null)
					con.close();
			}catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			return userInfo;
		}
	
		//更新用户密码
		public boolean updateUserPassword(String username,String newPwd){
			con = db.getConnection();
			try {
				pstmt = con.prepareStatement("update userinfo set u_password=? where u_username=?");
				
				pstmt.setString(1, newPwd);
				pstmt.setString(2, username);
				
				int rs = pstmt.executeUpdate();
				System.out.println(rs);
				if (pstmt != null)
					pstmt.close();
				if (con != null)
					con.close();
				
				return true;
				}catch (Exception  e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
		}
			return false;
		}
		public static void main(String[] args){
			UserDAOImpl u = new UserDAOImpl();
			u.updateUserPassword("admin", "123");
		}
	
}
