
package Servlets;

import java.io.IOException;
import java.util.ArrayList;

import Beans.DishBean;
import Beans.HotelBean;
import DAO.DishDAO;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/showDishes")
public class ShowDishesServlet extends HttpServlet {

```
protected void doGet(HttpServletRequest req,
                     HttpServletResponse resp)
        throws ServletException, IOException {

    ServletContext sct = req.getServletContext();

    HotelBean hb =
            (HotelBean) sct.getAttribute("HotelBean");

    ArrayList<DishBean> dishes =
            new DishDAO().showAllDishes(hb.getHotelId());

    req.setAttribute("dishList", dishes);

    req.getRequestDispatcher("ShowDishes.jsp")
       .forward(req, resp);
}
```

}
