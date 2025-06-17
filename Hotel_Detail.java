package Airlines.entites;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="hotel_listing")
public class Hotel_Detail {

	@Id
	@Column(name="h_name")
	private String name;
	@Column(name="price")
	private double price;
	@Column(name="location")
	private String location;
	@Column(name="check_in")
	private String check_in;
	@Column(name="check_out")
	private String check_out;
	@Column(name="hotel_code")
	private String hotel_code;


	public Hotel_Detail() {
		super();
	}

	public Hotel_Detail(String name, double price, String location, String check_in, String check_out,String hotel_code) {
		super();
		this.name = name;
		this.price = price;
		this.location = location;
		this.check_in = check_in;
		this.check_out = check_out;
		this.hotel_code = hotel_code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getCheck_in() {
		return check_in;
	}

	public void setCheck_in(String check_in) {
		this.check_in = check_in;
	}

	public String getCheck_out() {
		return check_out;
	}

	public void setCheck_out(String check_out) {
		this.check_out = check_out;
	}

	public String getHotel_code() {
		return hotel_code;
	}

	public void setHotel_code(String hotel_code) {
		this.hotel_code = hotel_code;
	}



}
