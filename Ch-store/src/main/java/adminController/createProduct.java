package adminController;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Category;
import Model.Products;
import dataAccessObject.DAO;
import dataAccessObject.adminDao;

/**
 * Servlet implementation class createProduct
 */
@WebServlet(name = "product-create", urlPatterns = { "/product-create" })
public class createProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public createProduct() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		request.setCharacterEncoding("utf-8");
		
		DAO dataLoad = new DAO();
		List<Category> listCategories = dataLoad.getAllCategories();
		
		request.setAttribute("listCategories", listCategories);
		request.getRequestDispatcher("/admin/products/create.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		
		
		String name = request.getParameter("name");
		String image = request.getParameter("image");
		String price = request.getParameter("price");
		String info = request.getParameter("info");
		String category = request.getParameter("category");
		
		adminDao dataLoad = new adminDao();
		dataLoad.insertProduct(name, image, price, info, category);
		
		
		response.sendRedirect("admin-products");
	}

}
