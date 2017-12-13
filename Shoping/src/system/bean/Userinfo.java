package system.bean;

public class Userinfo {
	//用户ID
	private int id;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	//用户名
	private String username;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	//用户密码
	private String password;
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	//名字
	private String name;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	//性别
	private int sex;
	public int getSex() {
		return sex;
	}
	public void setSex(int sex) {
		this.sex = sex;
	}
	//手机号码
	private String phone;
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	//电子邮件
	private String email;
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	//用户权限
	private int power;
	public int getPower() {
		return power;
	}
	public void setPower(int power) {
		this.power = power;
	}
	
	private String passwordAnswer;//客户输入的验证答案
	public String getPasswordAnswer(){
		return passwordAnswer;
	}
	public void setPasswordAnswer(String passwordAnswer){
		this.passwordAnswer = passwordAnswer;
	}
	//用户设置的问题
	private String passwordQuestion;
	public String getPasswordQuestion(){
		return passwordQuestion;
	}
	public void setPasswordQuestion(String passwordQuestion){
		this.passwordQuestion = passwordQuestion;
	}

}
