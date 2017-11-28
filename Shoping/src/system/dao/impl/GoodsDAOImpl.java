package system.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import system.bean.Goods;
import system.db.*;

public class GoodsDAOImpl {
	private Connection con;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private DBcon db;
	private String g_class="大牌专享";
	private String g_fire="热门推荐";
	
	//链接数据库
	public GoodsDAOImpl(){
			db=new DBcon();
	}
	/**
	 * 下面这是来获取大牌专享的商品
	 * 
	 * */
	public List<Goods> getBigGoods(){
		List<Goods> goods = new ArrayList<Goods>();	
		try {
			con=db.getConnection();
			String sql="SELECT * FROM goods WHERE g_class=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, g_class);
			rs=pstmt.executeQuery();
            while(rs.next()){				
				Goods good = new Goods();
				good.setG_id(rs.getInt("g_id"));
				good.setG_name(rs.getString("g_name"));
				good.setG_detail(rs.getString("g_detail"));
				good.setG_cost(rs.getInt("g_cost"));
				good.setG_price(rs.getInt("g_price"));
				good.setG_brand(rs.getString("g_brand"));
				good.setG_color(rs.getString("g_color"));
				good.setG_color_o(rs.getString("g_color_o"));
				good.setG_color_t(rs.getString("g_color_t"));
				good.setG_address(rs.getString("g_address"));
				good.setG_picture(rs.getString("g_picture"));
				good.setG_picture2(rs.getString("g_picture2"));
				good.setG_picture3(rs.getString("g_picture3"));
				good.setG_picture4(rs.getString("g_picture4"));
				good.setG_picture5(rs.getString("g_picture5"));
				good.setG_info(rs.getString("g_info"));
				good.setG_size(rs.getString("g_size"));
				good.setG_class(rs.getString("g_class"));
				goods.add(good);
			}						
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		return goods;
	}
	/**
	 * 下面这是来获取热门专享的商品
	 * 
	 * */
	public List<Goods> getFireGoods(){
		List<Goods> goods = new ArrayList<Goods>();	
		try {
			con=db.getConnection();
			String sql="SELECT * FROM goods WHERE g_class=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, g_fire);
			rs=pstmt.executeQuery();
            while(rs.next()){				
				Goods good = new Goods();
				good.setG_id(rs.getInt("g_id"));
				good.setG_name(rs.getString("g_name"));
				good.setG_detail(rs.getString("g_detail"));
				good.setG_cost(rs.getInt("g_cost"));
				good.setG_price(rs.getInt("g_price"));
				good.setG_brand(rs.getString("g_brand"));
				good.setG_color(rs.getString("g_color"));
				good.setG_color_o(rs.getString("g_color_o"));
				good.setG_color_t(rs.getString("g_color_t"));
				good.setG_address(rs.getString("g_address"));
				good.setG_picture(rs.getString("g_picture"));
				good.setG_picture2(rs.getString("g_picture2"));
				good.setG_picture3(rs.getString("g_picture3"));
				good.setG_picture4(rs.getString("g_picture4"));
				good.setG_picture5(rs.getString("g_picture5"));
				good.setG_info(rs.getString("g_info"));
				good.setG_size(rs.getString("g_size"));
				good.setG_class(rs.getString("g_class"));
				System.err.println(good.getG_brand());
				goods.add(good);
			}						
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		return goods;
	}
		

}
