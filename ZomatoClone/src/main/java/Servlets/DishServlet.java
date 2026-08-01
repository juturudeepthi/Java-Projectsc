package Servlets;

import java.io.IOException;

import Beans.DishBean;
import Beans.HotelBean;
import DAO.DishDAO;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/addDish")
public class DishServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		DishBean db=new DishBean();
		db.setDishName(req.getParameter("dishName"));
		String dishId=req.getParameter("dishId");
		ServletContext sct = req.getServletContext();
		HotelBean hb =(HotelBean) sct.getAttribute("HotelBean");
		dishId=dishId+hb.getHotelId();
		db.setDishId(Integer.parseInt(dishId));
		db.setHotelId(hb.getHotelId());
		db.setDishPrice(Double.parseDouble(req.getParameter("dishPrice")));
		int k = new DishDAO().addDish(db);
		if(k>0) {
			req.getRequestDispatcher("HotelHome.jsp").forward(req, resp);
		}
	}
}
