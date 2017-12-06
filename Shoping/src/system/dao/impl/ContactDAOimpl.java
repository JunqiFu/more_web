package system.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import system.db.DBcon;
import system.bean.contact;

public class ContactDAOimpl {
	
	private Connection con;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private DBcon db;
	//Á´½ÓÊý¾Ý¿â
	public ContactDAOimpl(){
		db=new DBcon();
	}	
	public boolean addcontact(contact contact){

		ContactDAOimpl contactDao=new ContactDAOimpl();
				try {
					con=db.getConnection();
					String sqlserver="insert into contact (contact_id,u_name,u_email,,u_phone,message) values(?,?,?,?,?)";
					pstmt=con.prepareStatement(sqlserver);
					pstmt.setString(1, contact.getcontact_id());
					pstmt.setString(2, contact.getu_name());
					pstmt.setString(3, contact.getu_email());
					pstmt.setString(4, contact.getu_phone());
					pstmt.setString(5, contact.getmessage());
					pstmt.executeUpdate();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return true;	
		}
			
	}
