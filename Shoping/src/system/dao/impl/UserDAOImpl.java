package system.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import system.bean.Address;
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
		/**
		 * 获取所有的普通用户信息
		 */
		public List<Userinfo> getPagedUser(int pageIndex, int pageSize ,int power){
			
			System.out.print(pageIndex);
			System.out.print(pageSize);
			System.out.print(power);
			List<Userinfo> userinfos = new ArrayList<Userinfo>();
			int startRowNum = (pageIndex - 1) * pageSize;
			try {
				con=db.getConnection();
				String sql="SELECT * FROM userinfo where u_power=? limit "
							+ startRowNum + "," + pageSize;
				pstmt=con.prepareStatement(sql);
				pstmt.setInt(1, power);
				rs=pstmt.executeQuery();
	            while(rs.next()){				
					Userinfo userinfo = new Userinfo();
					userinfo.setUsername(rs.getString("u_username"));
					userinfo.setPassword(rs.getString("u_password"));
					userinfo.setSex(rs.getInt("u_sex"));
					userinfo.setPhone(rs.getString("u_phone"));
					userinfo.setEmail(rs.getString("u_email"));
					userinfo.setPower(rs.getInt("u_power"));
					userinfo.setName(rs.getString("u_name"));
					userinfos.add(userinfo);
				}						
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}		
			return userinfos;
		}
		/**
		 * 下面这是来获取地址的总数
		 * 
		 * */
		public int getUserinfoCount( int power) {
			try {
				con=db.getConnection();
				String sql="select COUNT(*) from userinfo where u_power=?";
				pstmt=con.prepareStatement(sql);
				pstmt.setInt(1, power);
				rs=pstmt.executeQuery();
				if (rs.next()) {
					return rs.getInt(1);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return 0;
		}
		/**
		 * 下面这个是管理员修改密码的语句
		 * 
		 * */
		public boolean updateUserinfo(Userinfo userinfo){
			try {
				con=db.getConnection();
				String sqlserver="update userinfo set u_password=?,u_phone=?,u_email=?,u_passwordQuestion=?,u_passwordAnswer=?,u_name=? where u_username=?";
				pstmt=con.prepareStatement(sqlserver);
				pstmt.setString(1, userinfo.getPassword());
				pstmt.setString(2, userinfo.getPhone());
				pstmt.setString(3, userinfo.getEmail());
				pstmt.setString(4, userinfo.getPasswordQuestion());
				pstmt.setString(5, userinfo.getPasswordAnswer());
				pstmt.setString(6, userinfo.getName());
				pstmt.setString(7, userinfo.getUsername());
				pstmt.executeUpdate();
				return true;
			} catch (SQLException e) {
				e.printStackTrace();
			}
				return false;	
		}
		/**
		 * 删除用户根据用户名
		 * 
		 * */
		public int deleteUser(String username){
			int count=0;
			try {
				con=db.getConnection();
				String sql="delete from userinfo where u_username=?";
				pstmt=con.prepareStatement(sql);
				pstmt.setString(1, username);
				count=pstmt.executeUpdate();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return count;
		}
}
