package Beans;

import java.io.Serializable;

public class DishBean implements Serializable{
	private String dishName;
	private Integer dishId;
	private Integer hotelId;
	private Double dishPrice;
	
	public DishBean() {
		// TODO Auto-generated constructor stub
	}

	public String getDishName() {
		return dishName;
	}

	public void setDishName(String dishName) {
		this.dishName = dishName;
	}

	public Integer getDishId() {
		return dishId;
	}

	public void setDishId(Integer dishId) {
		this.dishId = dishId;
	}

	public Integer getHotelId() {
		return hotelId;
	}

	public void setHotelId(Integer hotelId) {
		this.hotelId = hotelId;
	}

	public Double getDishPrice() {
		return dishPrice;
	}

	public void setDishPrice(Double dishPrice) {
		this.dishPrice = dishPrice;
	}
	
	
}
