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
 * Servlet implementation class SearchControl
 */
@WebServlet(name = "Search", urlPatterns = { "/Search" })
public class SearchControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SearchControl() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		String txtSearch = request.getParameter("txt"); //Lưu giá trị nhập vào
		
		DAO dataLoad = new DAO();
		List<Products> searchProducts = dataLoad.searchByName(txtSearch);
		List<Category> listCategories = dataLoad.getAllCategories();
		List<Menu> listMenu = dataLoad.getAllMenus();
		
		request.setAttribute("txtS", txtSearch);
		request.setAttribute("listM", listMenu);
		request.setAttribute("listCategories", listCategories);
		request.setAttribute("listProducts", searchProducts);
		request.getRequestDispatcher("/Products.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
