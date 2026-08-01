package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Beans.HotelBean;
import DatabaseDetails.CreateConnection;

public class HotelDAO {
	public int hotelRegistration(HotelBean hb) {
		int k=0;
		try {
			Connection con=CreateConnection.getCon();
			PreparedStatement ps=con.prepareStatement
					("insert into hotel values(?,?,?,?)");
			ps.setString(1, hb.getHotelName());
			ps.setString(2, hb.getHotelAddress());
			ps.setInt(3, hb.getHotelId());
			ps.setString(4, hb.getHotelPassword());
			k=ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return k;
	}
	public HotelBean hotelLogin(Integer hotelId,String hotelPassword) {
		HotelBean hb=null;
		try {
			Connection con=CreateConnection.getCon();
			PreparedStatement ps=con.prepareStatement
					("select * from hotel where hotelid=? and hotelpassword=?");
			ps.setInt(1, hotelId);
			ps.setString(2, hotelPassword);
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				hb=new HotelBean();
				hb.setHotelName(rs.getString(1));
				hb.setHotelAddress(rs.getString(2));
				hb.setHotelId(rs.getInt(3));
				hb.setHotelPassword(rs.getString(4));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return hb;
	}
}
