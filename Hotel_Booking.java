package Airlines.entites;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="hotel_booking")
public class Hotel_Booking {

	@Id
	@Column(name="email",length=50)
	private String email;
	@Column(name="fname")
	private String fname;
	@Column(name="lname")
	private String lname;
	@Column(name="nationality")
	private String nationality;
	@Column(name="number")
	private String number;



	public Hotel_Booking(String email, String fname, String lname, String nationality, String number) {
		super();
		this.email = email;
		this.fname = fname;
		this.lname = lname;
		this.nationality = nationality;
		this.number = number;
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
	public String getNationality() {
		return nationality;
	}
	public void setNationality(String nationality) {
		this.nationality = nationality;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}


}
