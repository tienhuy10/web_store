package Controller;

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

/**
 * Servlet implementation class CategoryControl
 */
@WebServlet(name = "Category", urlPatterns = { "/Category" })
public class CategoryControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CategoryControl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");

		// Nhận giá trị menuID từ request
		String id = request.getParameter("id");
		DAO dataLoad = new DAO();
		List<Products> listProducts = dataLoad.getProductsbyCate(id);
		List<Category> listCategories = dataLoad.getAllCategories();
		List<Menu> listMenu = dataLoad.getAllMenus();
		

		// set data lên html
		request.setAttribute("listM", listMenu);
		
		request.setAttribute("listProducts", listProducts);
		request.setAttribute("listCategories", listCategories);
		request.getRequestDispatcher("/views/Products.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
