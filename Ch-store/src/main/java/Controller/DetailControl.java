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
 * Servlet implementation class DetailControl
 */
@WebServlet(name = "Detail", urlPatterns = { "/Detail" })
public class DetailControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DetailControl() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		
		DAO dataLoad = new DAO();
		Products products = dataLoad.getProductsbyID(id);
		List<Menu> listMenu = dataLoad.getAllMenus();
		request.setAttribute("listM", listMenu);
		
		request.setAttribute("products", products);
		request.getRequestDispatcher("/Detail.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
