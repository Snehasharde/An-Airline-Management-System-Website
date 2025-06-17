package Airlines.entites;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Flights_Detail")
public class Filghts_Detail {

	@Id
	@Column(length=30, name="flight_code")
	private String flight_code;
	@Column(length=50 ,name="flight_name")
	private String flight_name;
	@Column(length=50 ,name="source")
	private String source;
	@Column(length=50 ,name="destination")
	private String destination;
	@Column(length=30 ,name="price")
	private double price;
	@Column(length=50 ,name="departing")
	private String departing;
	@Column(length=50 ,name="returning")
	private String returning;
	@Column(name="way")
	private String way;
    @Column(name="cabin")
	private String cabin;
    @Column(name="TakeOff_Time")
	private String TakeOff_Time;
    @Column(name="Arrival_Time")
	private String Arrival_Time;
    @Column(name="discount")
    private double discount;

	public Filghts_Detail() {
		super();
	}

	 

	public Filghts_Detail(String flight_code, String flight_name, String source, String destination, double price,
			String departing, String returning, String cabin, String takeOff_Time, String arrival_Time ,String way,double discount) {
		super();
		this.flight_code = flight_code;
		this.flight_name = flight_name;
		this.source = source;
		this.destination = destination;
		this.price = price;
		this.departing = departing;
		this.returning = returning;
		this.cabin = cabin;
		TakeOff_Time = takeOff_Time;
		Arrival_Time = arrival_Time;
		this.way = way;
		this.discount = discount;
	}



	public String getFlight_code() {
		return flight_code;
	}

	public void setFlight_code(String flight_code) {
		this.flight_code = flight_code;
	}

	public String getFlight_name() {
		return flight_name;
	}

	public void setFlight_name(String flight_name) {
		this.flight_name = flight_name;
	}

	public String getSource() {
		return source;
	}

	public void setSource(String source) {
		this.source = source;
	}

	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getDeparting() {
		return departing;
	}

	public void setDeparting(String departing) {
		this.departing = departing;
	}

	public String getReturning() {
		return returning;
	}

	public void setReturning(String returning) {
		this.returning = returning;
	}



	public String getWay() {
		return way;
	}

	public void setWay(String way) {
		this.way = way;
	}

	public String getCabin() {
		return cabin;
	}

	public void setCabin(String cabin) {
		this.cabin = cabin;
	}

	public String getTakeOff_Time() {
		return TakeOff_Time;
	}

	public void setTakeOff_Time(String takeOff_Time) {
		TakeOff_Time = takeOff_Time;
	}

	public String getArrival_Time() {
		return Arrival_Time;
	}

	public void setArrival_Time(String arrival_Time) {
		Arrival_Time = arrival_Time;
	}
     
	public double getDiscount() {
		return discount;
	}

	public void setDiscount(double discount) {
		this.discount = discount;
	}



	@Override
	public String toString() {
		return "Filghts_Detail [flight_code=" + flight_code + ", flight_name=" + flight_name + ", source=" + source
				+ ", destination=" + destination + ", price=" + price + ", departing=" + departing + ", returning="
				+ returning + "discount"+discount+"]";
	}


}

