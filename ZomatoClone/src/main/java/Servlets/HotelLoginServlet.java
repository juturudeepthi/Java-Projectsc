package Servlets;

import java.io.IOException;

import Beans.HotelBean;
import DAO.HotelDAO;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/hotelLogin")
public class HotelLoginServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Integer hotelId=Integer.parseInt(req.getParameter("hotelId"));
		String hotelPassword=req.getParameter("hotelPassword");
		HotelBean hb = new HotelDAO().hotelLogin(hotelId, hotelPassword);
		
		if(hb!=null) {
			ServletContext sct = req.getServletContext();
			sct.setAttribute("HotelBean", hb);
			req.getRequestDispatcher("HotelHome.jsp").forward(req, resp);
		}
		else {
			req.setAttribute("Msg", "Invalid Login");
			req.getRequestDispatcher("HotelMsg.jsp").forward(req, resp);
		}
	}
}
