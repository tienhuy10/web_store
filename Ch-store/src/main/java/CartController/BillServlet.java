package CartController;

import java.io.IOException;
import java.sql.Connection;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DataConnect.DBConnection;
import Model.Bill;
import Model.Menu;
import Model.Products;
import Model.UserOrderInfo;
import dataAccessObject.DAO;
import dataAccessObject.OrderDao;

/**
 * Servlet implementation class BillServlet
 */
@WebServlet("/bill")
public class BillServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BillServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");

		try {
			Connection connection = DBConnection.getConnection();
			OrderDao orderDao = new OrderDao(connection);
			String id = request.getParameter("id");
			List<Bill> billList = orderDao.getBillInfoForUser(id);

			request.setAttribute("bill", billList);
			request.getRequestDispatcher("/admin/cart/bill.jsp").forward(request, response);

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
