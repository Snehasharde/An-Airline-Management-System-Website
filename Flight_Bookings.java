package Airlines.entites;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Flight_Booking")
public class Flight_Bookings {


	@Id
	@Column(name="email")
	private String email;
	@Column(name="fname")
	private String fname;
	@Column(name="lname")
	private String lname;

	@Column(name="gender")
	private String gender;
	@Column(name="phone")
	private String phone;

	@Column(name="dob")
	private String dob;
	@Column(name="nationality")
	private String nationality;
	@Column(name="postal_code")
	private String postal_code;
	@Column(name="flight_number")
	private String flight_number;

	public Flight_Bookings() {
		super();
	}

	public Flight_Bookings(String fname, String lname, String email, String gender, String phone, String dob, String nationality, String postal_code, String flight_number) {
		super();
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		this.gender = gender;
		this.phone = phone;
		this.dob = dob;
		this.nationality = nationality;
		this.postal_code = postal_code;
		this.flight_number= flight_number;
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

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
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

	public String getNationality() {
		return nationality;
	}

	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	public String getPostal_code() {
		return postal_code;
	}

	public void setPostal_code(String postal_code) {
		this.postal_code = postal_code;
	}

	public String getFlight_number() {
		return flight_number;
	}

	public void setFlight_number(String flight_number) {
		this.flight_number = flight_number;
	}

}
