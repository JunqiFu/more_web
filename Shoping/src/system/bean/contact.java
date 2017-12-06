package system.bean;

public class contact {
	private String contact_id;
	private String u_name;
	private String u_email;
	private String u_phone;
	private String message;
	
	public String getcontact_id() {
		return contact_id;
	}
	public void setcontact_id(String contact_id) {
		this.contact_id = contact_id;
	}
	
	
	public String getu_name() {
		return u_name;
	}
	public void setu_name(String u_name) {
		this.u_name = u_name;
	}
	
	
	public String getu_email() {
		return u_email;
	}
	public void setu_email(String u_email) {
		this.u_email = u_email;
	}
	
	
	public String getmessage() {
		return message;
	}
	public void setmessage(String message) {
		this.message = message;
	}
	
	public String getu_phone() {
		return u_phone;
	}
	public void setu_phone(String u_phone) {
		this.u_phone = u_phone;
	}

}
