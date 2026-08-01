package Beans;

import java.io.Serializable;

public class HotelBean implements Serializable{
	private String hotelName;
	private String hotelAddress;
	private Integer hotelId;
	private String hotelPassword;
	
	public HotelBean() {
		// TODO Auto-generated constructor stub
	}

	public String getHotelName() {
		return hotelName;
	}

	public void setHotelName(String hotelName) {
		this.hotelName = hotelName;
	}

	public String getHotelAddress() {
		return hotelAddress;
	}

	public void setHotelAddress(String hotelAddress) {
		this.hotelAddress = hotelAddress;
	}

	public Integer getHotelId() {
		return hotelId;
	}

	public void setHotelId(Integer hotelId) {
		this.hotelId = hotelId;
	}

	public String getHotelPassword() {
		return hotelPassword;
	}

	public void setHotelPassword(String hotelPassword) {
		this.hotelPassword = hotelPassword;
	}
	
	
}
