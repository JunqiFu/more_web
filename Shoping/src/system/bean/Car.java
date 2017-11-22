package system.bean;

public class Car {
	private int o_id;//订单编号
	private int g_id;//商品id
	private String username;//用户名
	private String c_pay;//是否支付
	public int getO_id() {
		return o_id;
	}
	public void setO_id(int o_id) {
		this.o_id = o_id;
	}
	public int getG_id() {
		return g_id;
	}
	public void setG_id(int g_id) {
		this.g_id = g_id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getC_pay() {
		return c_pay;
	}
	public void setC_pay(String c_pay) {
		this.c_pay = c_pay;
	}

}
