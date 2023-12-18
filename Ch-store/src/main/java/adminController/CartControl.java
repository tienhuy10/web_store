package adminController;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DataConnect.DBConnection;
import Model.Order;
import Model.UserOrderInfo;
import dataAccessObject.DAO;
import dataAccessObject.OrderDao;
import dataAccessObject.adminDao;

/**
 * Servlet implementation class CartControl
 */
@WebServlet(name = "admin-cart", urlPatterns = { "/admin-cart" })
public class CartControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CartControl() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");

		try {
			// Lấy đối tượng Connection từ DBConnection
			Connection connection = DBConnection.getConnection();

			// Khởi tạo đối tượng OrderDao với đối tượng Connection
			OrderDao orderDao = new OrderDao(connection);

			// Gọi hàm để lấy danh sách thông tin đơn hàng của người dùng
			List<UserOrderInfo> userOrderList = orderDao.UserOrderInfo();

			request.setAttribute("listO", userOrderList);
			request.getRequestDispatcher("/admin/cart/home.jsp").forward(request, response);

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}