package Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Category;
import Model.Menu;
import Model.Products;
import Model.TopProduct;
import dataAccessObject.DAO;
import dataAccessObject.adminDao;

/** 
 * Servlet implementation class HomeControl
 */
@WebServlet(name = "Home", urlPatterns = { "/Home" })
public class HomeControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public HomeControl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id"); 
		DAO dataLoad = new DAO();
		
		List<Menu> listMenu = dataLoad.getAllMenus();
		List<Products> listProNew = dataLoad.getLast(); 
		List<TopProduct> topProducts = dataLoad.getTopProducts();
		Products products = dataLoad.getProductsbyID(id); 
		List<Category> listCategories = dataLoad.getAllCategories();
		
		// set data lên html
		request.setAttribute("listM", listMenu);
		request.setAttribute("topProducts", topProducts);
		request.setAttribute("listProNew", listProNew);
		request.setAttribute("products", products);
		request.setAttribute("listC", listCategories);
		request.getRequestDispatcher("/index.jsp").forward(request, response);	
		
	}
	
}
