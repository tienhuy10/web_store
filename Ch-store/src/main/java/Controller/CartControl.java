package Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Menu;
import Model.Products;
import Model.cartbean;
import dataAccessObject.DAO;

/**
 * Servlet implementation class CartControl
 */
@WebServlet(name = "cart", urlPatterns = { "/cart" })
public class CartControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public static List<cartbean> lsCartbeans = new ArrayList<cartbean>();

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

		DAO dataLoad = new DAO();
		List<Menu> listMenu = dataLoad.getAllMenus();
		cartbean cartbean = new cartbean(null, 0);

		Products products = null;
		String action = request.getParameter("action");
		String id = null;
		if (action == null || action.equals("")) {
			request.setAttribute("listM", listMenu);
			request.getRequestDispatcher("/views/cart.jsp").forward(request, response);
		}
		switch (action) {
		case "addcart&&id":
			id = request.getParameter("id");
			products = dataLoad.getProductsbyID(id);
			if (products != null) {
				cartbean.setProducts(products);
				cartbean.setQuantity(1);
				lsCartbeans.add(cartbean);
			}
			System.out.println("size:" + lsCartbeans.size());
			request.setAttribute("listM", listMenu);
			request.getRequestDispatcher("/views/cart.jsp").forward(request, response);
			break;
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
