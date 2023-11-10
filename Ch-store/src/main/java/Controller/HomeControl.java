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
		
		String id = request.getParameter("id"); // Tạo biến lưu giá trị của tham số request HTTP

		// Lấy dữ liệu từ DataLoad
		DAO dataLoad = new DAO();
		List<Menu> listMenu = dataLoad.getAllMenus(); // Load dữ liệu thanh Menu
		List<Products> listProNew = dataLoad.getLast(); // Load danh sách các sản phẩm mới nhất (8 sản phẩm)
		Products products = dataLoad.getProductsbyID(id); //Lấy chi tiết sản phẩm theo ID
		
		// set data lên html
		request.setAttribute("listM", listMenu);
		request.setAttribute("listProNew", listProNew);
		request.setAttribute("products", products);
		request.getRequestDispatcher("/index.jsp").forward(request, response);
		
		
		
	}

}
