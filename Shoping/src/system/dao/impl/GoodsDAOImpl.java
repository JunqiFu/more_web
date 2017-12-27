package system.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import system.bean.Goods;
import system.bean.Userinfo;
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
				goods.add(good);
			}						
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		return goods;
	}
	/**
	 * 下面这是来搜索的商品
	 * 
	 * */
	public List<Goods> searchGoods(String key) {
		List<Goods> goods = new ArrayList<Goods>();	
		try {
			con=db.getConnection();
			String sql="SELECT * FROM goods WHERE g_name like ? or g_detail like ? or g_brand like ?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, "%" + key + "%");
			pstmt.setString(2, "%" + key + "%");
			pstmt.setString(3, "%" + key + "%");
			rs=pstmt.executeQuery();
			while (rs.next()) {
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
			return goods;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 * 下面这是通过商品的ID来查询的商品信息
	 * 
	 * */
	public Goods findGoodsByID(int id ) {
		Goods goods = new Goods();	
		try {
			con=db.getConnection();
			String sql="SELECT * FROM goods WHERE g_id="+id;
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while (rs.next()) {
				goods.setG_id(rs.getInt("g_id"));
				goods.setG_name(rs.getString("g_name"));
				goods.setG_detail(rs.getString("g_detail"));
				goods.setG_cost(rs.getInt("g_cost"));
				goods.setG_price(rs.getInt("g_price"));
				goods.setG_brand(rs.getString("g_brand"));
				goods.setG_color(rs.getString("g_color"));
				goods.setG_color_o(rs.getString("g_color_o"));
				goods.setG_color_t(rs.getString("g_color_t"));
				goods.setG_address(rs.getString("g_address"));
				goods.setG_picture(rs.getString("g_picture"));
				goods.setG_picture2(rs.getString("g_picture2"));
				goods.setG_picture3(rs.getString("g_picture3"));
				goods.setG_picture4(rs.getString("g_picture4"));
				goods.setG_picture5(rs.getString("g_picture5"));
				goods.setG_info(rs.getString("g_info"));
				goods.setG_size(rs.getString("g_size"));
				goods.setG_class(rs.getString("g_class"));
			}
			return goods;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	/**
	 * 分页来获取所有的商品信息
	 * */

	public List<Goods> getPagedGoods(int pageIndex, int pageSize){
		
		List<Goods> good = new ArrayList<Goods>();
		int startRowNum = (pageIndex - 1) * pageSize;
		try {
			con=db.getConnection();
			String sql="SELECT * FROM goods  limit "
						+ startRowNum + "," + pageSize;
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
            while(rs.next()){				
            	Goods goods = new Goods();
            	goods.setG_id(rs.getInt("g_id"));
				goods.setG_name(rs.getString("g_name"));
				goods.setG_detail(rs.getString("g_detail"));
				goods.setG_cost(rs.getInt("g_cost"));
				goods.setG_price(rs.getInt("g_price"));
				goods.setG_brand(rs.getString("g_brand"));
				goods.setG_color(rs.getString("g_color"));
				goods.setG_color_o(rs.getString("g_color_o"));
				goods.setG_color_t(rs.getString("g_color_t"));
				goods.setG_address(rs.getString("g_address"));
				goods.setG_picture(rs.getString("g_picture"));
				goods.setG_picture2(rs.getString("g_picture2"));
				goods.setG_picture3(rs.getString("g_picture3"));
				goods.setG_picture4(rs.getString("g_picture4"));
				goods.setG_picture5(rs.getString("g_picture5"));
				goods.setG_info(rs.getString("g_info"));
				goods.setG_size(rs.getString("g_size"));
				goods.setG_class(rs.getString("g_class"));
				good.add(goods);
			}						
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		return good;
	}
	/**
	 * 获取所有的商品的总数
	 * */
	public int getGoodsCount() {
		try {
			con=db.getConnection();
			String sql="select COUNT(*) from goods";
			pstmt=con.prepareStatement(sql);	
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
	 * 删除商品信息
	 * 
	 * */
	public int deleteGoods(int g_id){
		int count=0;
		try {
			con=db.getConnection();
			String sql="delete from goods where g_id=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, g_id);
			count=pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return count;
	}

}
