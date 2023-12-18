package CartController;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.*;
import java.text.SimpleDateFormat;

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

@WebServlet("/order-now")
public class OrderNow extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public OrderNow() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try (PrintWriter out = response.getWriter()) {
			SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
			Date date = new Date();

			Account account = (Account) request.getSession().getAttribute("acc");

			if (account != null) {
				String productId = request.getParameter("id");
				int productQuantity = Integer.parseInt(request.getParameter("quantity"));
				if (productQuantity <= 0) {
					productQuantity = 1;
				}

				Order orderModel = new Order();
				orderModel.setID(Integer.parseInt(productId));
				orderModel.setUid(account.getID());
				orderModel.setQuantity(productQuantity);
				orderModel.setDate(formatter.format(date));

				OrderDao orderDao = new OrderDao(DBConnection.getConnection());
				boolean result = orderDao.insertOrder(orderModel);

				if (result) {
					ArrayList<Cart> cart_list = (ArrayList<Cart>) request.getSession().getAttribute("cart-list");
					if (cart_list != null) {
						for (Cart c : cart_list) {
							if (c.getID() == Integer.parseInt(productId)) {
								cart_list.remove(cart_list.indexOf(c));
								break;
							}
						}
					}
					response.sendRedirect("oder");
				} else {
					out.println("order failed");
				}

			} else {
				response.sendRedirect("login");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
