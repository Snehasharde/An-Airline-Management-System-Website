package Airlines.entites;

import java.sql.Blob;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="car_detail")
public class car_Detail {


	@Column(name="car_name")
	private String car_name;
	@Column(name="price")
	private double price;
	@Id
	@Column(name="car_number")
	private String car_number;
	@Column(name="pick_up_location")
	private String pick_up;
	@Column(name="drop_off_location")
	private String drop_off;
	@Column(name="start_date")
	private String strat_date;
	@Column(name="return_date")
	private String return_date;
	@Column(name="location")
	private String location;
	@Column(name="image")
	private Blob image;



	public car_Detail() {
		super();
	}

	public car_Detail(String car_name, double price, String car_number, String pick_up, String drop_off,
			String strat_date, String return_date, String location,Blob image) {
		super();
		this.car_name = car_name;
		this.price = price;
		this.car_number = car_number;
		this.pick_up = pick_up;
		this.drop_off = drop_off;
		this.strat_date = strat_date;
		this.return_date = return_date;
		this.location = location;
		this.image = image;
	}

	public String getCar_name() {
		return car_name;
	}
	public void setCar_name(String car_name) {
		this.car_name = car_name;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getCar_number() {
		return car_number;
	}
	public void setCar_number(String car_number) {
		this.car_number = car_number;
	}
	public String getPick_up() {
		return pick_up;
	}
	public void setPick_up(String pick_up) {
		this.pick_up = pick_up;
	}
	public String getDrop_off() {
		return drop_off;
	}
	public void setDrop_off(String drop_off) {
		this.drop_off = drop_off;
	}
	public String getStrat_date() {
		return strat_date;
	}
	public void setStrat_date(String strat_date) {
		this.strat_date = strat_date;
	}
	public String getReturn_date() {
		return return_date;
	}
	public void setReturn_date(String return_date) {
		this.return_date = return_date;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}

	public Blob getImage() {
		return image;
	}

	public void setImage(Blob image) {
		this.image = image;
	}


}
