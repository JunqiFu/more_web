package system.bean;

public class Userinfo {
	//�û�ID
	private int id;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	//�û���
	private String username;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	//�û�����
	private String password;
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	//����
	private String name;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	//�Ա�
	private int sex;
	public int getSex() {
		return sex;
	}
	public void setSex(int sex) {
		this.sex = sex;
	}
	//�ֻ�����
	private String phone;
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	//�����ʼ�
	private String email;
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	//�û�Ȩ��
	private int power;
	public int getPower() {
		return power;
	}
	public void setPower(int power) {
		this.power = power;
	}
	
	private String passwordAnswer;//�ͻ��������֤��
	public String getPasswordAnswer(){
		return passwordAnswer;
	}
	public void setPasswordAnswer(String passwordAnswer){
		this.passwordAnswer = passwordAnswer;
	}
	//�û����õ�����
	private String passwordQuestion;
	public String getPasswordQuestion(){
		return passwordQuestion;
	}
	public void setPasswordQuestion(String passwordQuestion){
		this.passwordQuestion = passwordQuestion;
	}

}
