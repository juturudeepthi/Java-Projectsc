package Servlets;
import java.io.IOException;

import Beans.HotelBean;
import DAO.HotelDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/hotelRegistration")
public class HotelRegistrationServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HotelBean hb=new HotelBean();
		hb.setHotelName(req.getParameter("hotelName"));
		hb.setHotelAddress(req.getParameter("hotelAddress"));
		hb.setHotelId(Integer.parseInt(req.getParameter("hotelId")));
		hb.setHotelPassword(req.getParameter("hotelPassword"));
		int k=new HotelDAO().hotelRegistration(hb);
		if(k>0) {
			req.setAttribute("Msg", "Hotel Register Successfully");
			req.getRequestDispatcher("HotelMsg.jsp").forward(req, resp);
		}
		else {
			req.setAttribute("Msg", "Hotel Not Register Successfully");
			req.getRequestDispatcher("HotelMsg.jsp").forward(req, resp);
		}
	}
}
