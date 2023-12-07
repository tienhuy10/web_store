package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Menu;
import Model.Products;
import dataAccessObject.DAO;

/**
 * Servlet implementation class BuyServlet
 */
@WebServlet("/buy")
public class BuyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public BuyServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");

		DAO dataLoad = new DAO();
		Products products = dataLoad.getProductsbyID(id);
		List<Menu> listMenu = dataLoad.getAllMenus();
		request.setAttribute("listM", listMenu);

		request.setAttribute("products", products);
		request.getRequestDispatcher("./views/buy.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");

		String IDProduct = request.getParameter("msp");
		String Price = request.getParameter("price");
		String UserName = request.getParameter("username");
		String Phone = request.getParameter("phone");
		String Email = request.getParameter("email");
		String Address = request.getParameter("address");
		String Contents = request.getParameter("contents");

		DAO dao = new DAO();
		dao.order(IDProduct, Price, UserName, Phone, Email, Address, Contents);
		response.sendRedirect("Success");
	}

}
