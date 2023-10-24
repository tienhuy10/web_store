package Controller;

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

/**
 * Servlet implementation class ProductsControl
 */
@WebServlet(name = "Products", urlPatterns = { "/Products" })
public class ProductsControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductsControl() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");

		// Lấy dữ liệu từ DataLoad
		DAO dataLoad = new DAO(); 
		List<Products> listProducts = dataLoad.getAllProducts();
		List<Category> listCategories = dataLoad.getAllCategories();
		
		// set data lên html
		request.setAttribute("listProducts", listProducts);
		request.setAttribute("listCategories", listCategories);
		request.getRequestDispatcher("/Products.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
