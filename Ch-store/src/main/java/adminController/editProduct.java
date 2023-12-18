package adminController;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Category;
import Model.Menu;
import Model.Products;
import dataAccessObject.DAO;
import dataAccessObject.adminDao;

/**
 * Servlet implementation class editProduct
 */
@WebServlet(name = "edit-product", urlPatterns = { "/edit-product" })
public class editProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public editProduct() {
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
		String id = request.getParameter("id");

		DAO dataLoad = new DAO();
		Products products = dataLoad.getProductsbyID(id);
		List<Category> listCategories = dataLoad.getAllCategories();

		request.setAttribute("listCategories", listCategories);

		request.setAttribute("products", products);
		request.getRequestDispatcher("/admin/products/edit.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String image = request.getParameter("image");
		String price = request.getParameter("price");
		String info = request.getParameter("info");
		String category = request.getParameter("category");
		String quantity = request.getParameter("quantity");
		String capital_price = request.getParameter("capital_price");
		
		adminDao dataLoad = new adminDao();
		dataLoad.editProduct(name, image, price, info, category, quantity, capital_price, id);
		
		
		response.sendRedirect("admin-products");
	}

}
