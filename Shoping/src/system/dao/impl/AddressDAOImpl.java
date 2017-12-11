package system.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import system.bean.Address;
import system.bean.Goods;
import system.bean.Userinfo;
import system.db.*;

public class AddressDAOImpl {
	private Connection con;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private DBcon db;

	
	//链接数据库
	public AddressDAOImpl(){
				db=new DBcon();
		}
	/**
	 * 下面这是来获取地址的所有信息
	 * 
	 * */
	public List<Address> getAllInfoByUser(String username){
		List<Address> addresses = new ArrayList<Address>();	
		try {
			con=db.getConnection();
			String sql="SELECT * FROM address WHERE u_username=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1,username );
			rs=pstmt.executeQuery();
            while(rs.next()){				
				Address address = new Address();
				address.setU_username(username);
				address.setA_id(rs.getInt("a_id"));
				address.setA_mail(rs.getString("a_mail"));
				address.setA_name(rs.getString("a_name"));
				address.setA_phone(rs.getString("a_phone"));
				address.setAddress(rs.getString("a_address"));
				addresses.add(address);
			}						
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		return addresses;
	}
	/**
	 * 下面这是来获取地址的记录的
	 * 
	 * */
	public int getAddrCount(String username) {
		try {
			con=db.getConnection();
			String sql="select COUNT(*) from address WHERE u_username=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1,username );
			
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
	 * 增加地址信息（注册）
	 * 
	 */	
	public boolean addAddrInfo(Address address){
		
			try {
				con=db.getConnection();
				String sqlserver="insert into address (a_id,u_username,a_name,a_mail,a_phone,a_address) values(?,?,?,?,?,?)";
				pstmt=con.prepareStatement(sqlserver);
				pstmt.setInt(1, address.getA_id());
				pstmt.setString(2, address.getU_username());
				pstmt.setString(3, address.getA_name());
				pstmt.setString(4, address.getA_mail());
				pstmt.setString(5, address.getA_phone());
				pstmt.setString(6, address.getA_address());
				pstmt.executeUpdate();
				return true;
			} catch (SQLException e) {
				e.printStackTrace();
			}
				return false;	
		}
	public int deleteAddr(int id){
		int count=0;
		try {
			con=db.getConnection();
			String sql="delete from address where a_id=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, id);
			count=pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return count;
	}
		
			
	

}
