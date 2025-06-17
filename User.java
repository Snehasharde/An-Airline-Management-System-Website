package Airlines.entites;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="User_Data")
public class User {

	@Id
	@Column(length = 100, name ="email")
	private String email;

	@Column(length = 100, name ="fname")
	private String fname;
	@Column(length = 100, name ="lname")
	private String lname;

	@Column(length = 30, name ="password")
	private String password;
	@Column(length = 11, name ="phone")
	private String phone;
	@Column(length = 50, name ="country")
	private String country;
	@Column(length = 50, name ="language")
	private String language;
	@Column(length = 30, name ="dto")
	private String dto;
	@Column(length = 5, name ="id")
	private int id;
	@Column(length = 25, name="user_type")
	private String user_type;



	public User() {
		super();
	}
	public User(String email, String fname, String lname, String password, String phone, String country,
			String language, String dto, int id,String user_type) {
		super();
		this.email = email;
		this.fname = fname;
		this.lname = lname;
		this.password = password;
		this.phone = phone;
		this.country = country;
		this.language = language;
		this.dto = dto;
		this.id = id;
		this.user_type=user_type;
	}
	public User(String email, String fname, String lname, String password, String phone, String country,
			String language, String dto ,String user_type) {
		super();
		this.email = email;
		this.fname = fname;
		this.lname = lname;
		this.password = password;
		this.phone = phone;
		this.country = country;
		this.language = language;
		this.dto = dto;
		this.user_type=user_type;
	}


	public String getUser_type() {
		return user_type;
	}
	public void setUser_type(String user_type) {
		this.user_type = user_type;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getLanguage() {
		return language;
	}
	public void setLanguage(String language) {
		this.language = language;
	}
	public String getDto() {
		return dto;
	}
	public void setDto(String dto) {
		this.dto = dto;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@Override
	public String toString() {
		return "User [email=" + email + ", fname=" + fname + ", lname=" + lname + ", password=" + password + ", phone="
				+ phone + ", country=" + country + ", language=" + language + ", dto=" + dto + ", id=" + id
				+ ", user_type=" + user_type + "]";
	}


}
