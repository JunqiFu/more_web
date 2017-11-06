package system.db;


import java.sql.*;

public class DBcon {
	
	private Connection con;
	public Connection getConnection(){		
		try{
			//Class.forName("com.mysql.jdbc.Driver");
			//con=DriverManager.getConnection("jdbc:mysql://localhost/mysql","root","root");
		
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/shopping?"
					+ "useUnicode=true&characterEncoding=UTF8";
			con = DriverManager.getConnection(url, "root", "root");
		}catch(Exception e){
			e.printStackTrace();
		}	
		return con;
	}
	
	public static void main(String[] args) {
		DBcon db=new DBcon();
		System.out.println(db.getConnection());

	}

}