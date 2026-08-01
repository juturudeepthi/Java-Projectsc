package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

import Beans.DishBean;
import DatabaseDetails.CreateConnection;

public class DishDAO {
	public int addDish(DishBean db) {
		int k=0;
		try {
			Connection con=CreateConnection.getCon();
			PreparedStatement ps=con.prepareStatement
					("insert into dish values(?,?,?,?)");
			ps.setString(1, db.getDishName());
			ps.setInt(2, db.getDishId());
			ps.setInt(3, db.getHotelId());
			ps.setDouble(4, db.getDishPrice());
			k=ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return k;
	}
}
