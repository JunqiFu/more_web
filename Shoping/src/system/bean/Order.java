package system.bean;

public class Order {
	private int o_id;//�������id
	private String u_username;//�û���
	private String u_name;//����
	private String o_time;//���ɶ�����ʱ��
	private String u_price;//�ܽ��
	private String u_address;//�ʼĵĵ�ַ
	private String o_pay;//֧���ķ�ʽ
	public int getO_id() {
		return o_id;
	}
	public void setO_id(int o_id) {
		this.o_id = o_id;
	}
	public String getU_username() {
		return u_username;
	}
	public void setU_username(String u_username) {
		this.u_username = u_username;
	}
	public String getU_name() {
		return u_name;
	}
	public void setU_name(String u_name) {
		this.u_name = u_name;
	}
	public String getO_time() {
		return o_time;
	}
	public void setO_time(String o_time) {
		this.o_time = o_time;
	}
	public String getU_price() {
		return u_price;
	}
	public void setU_price(String u_price) {
		this.u_price = u_price;
	}
	public String getU_address() {
		return u_address;
	}
	public void setU_address(String u_address) {
		this.u_address = u_address;
	}
	public String getO_pay() {
		return o_pay;
	}
	public void setO_pay(String o_pay) {
		this.o_pay = o_pay;
	}
	
}
