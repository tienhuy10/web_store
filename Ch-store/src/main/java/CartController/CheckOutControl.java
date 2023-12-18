package CartController;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DataConnect.DBConnection;
import Model.Account;
import Model.Cart;
import Model.Order;
import dataAccessObject.OrderDao;

/**
 * Servlet implementation class CheckOutControl
 */
@WebServlet("/check-out")
public class CheckOutControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public CheckOutControl() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try (PrintWriter out = response.getWriter()) {
			SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
			Date date = new Date();
			ArrayList<Cart> cart_list = (ArrayList<Cart>) request.getSession().getAttribute("cart-list");
			Account auth = (Account) request.getSession().getAttribute("acc");
			if (cart_list != null && auth != null) {
				for (Cart c : cart_list) {
					Order order = new Order();
					order.setID(c.getID());
					order.setUid(auth.getID());
					order.setQuantity(c.getQuantity());
					order.setDate(formatter.format(date));

					OrderDao oDao = new OrderDao(DBConnection.getConnection());
					boolean result = oDao.insertOrder(order);
					if (!result)
						break;
				}
				cart_list.clear();
				response.sendRedirect("oder");
			} else {
				if (auth == null) {
					response.sendRedirect("login");
				}
				response.sendRedirect("cart");
			}
		} catch (Exception e) {

			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
