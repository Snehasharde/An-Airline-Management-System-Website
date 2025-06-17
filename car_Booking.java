package Airlines.entites;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="car_booking")
public class car_Booking {

	@Column(name="gender")
	private String gender;
	@Column(name="fname")
	private String fname;
	@Column(name="lname")
	private String lname;
	@Id
	@Column(name="email")
	private String email;
	@Column(name="nationality")
	private String nationality;
	@Column(name="phone")
	private String phone;
	@Column(name="dob")
	private String dob;
	@Column(name="code")
	private String code;


	public car_Booking(String gender, String fname, String lname, String email, String nationality, String phone,
			String dob, String code) {
		super();
		this.gender = gender;
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		this.nationality = nationality;
		this.phone = phone;
		this.dob = dob;
		this.code = code;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNationality() {
		return nationality;
	}
	public void setNationality(String nationality) {
		this.nationality = nationality;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}



}
