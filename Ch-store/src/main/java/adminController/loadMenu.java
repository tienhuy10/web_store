package adminController;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Menu;
import dataAccessObject.adminDao;

/**
 * Servlet implementation class loadMenu
 */
@WebServlet(name = "loadMenu", urlPatterns = { "/loadMenu" })
public class loadMenu extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loadMenu() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");

		String menuID = request.getParameter("id");
		adminDao dataLoad = new adminDao();
		Menu menu = dataLoad.getMenuID(menuID);
		
		
		// set data lên html
		request.setAttribute("listM", menu);
		request.getRequestDispatcher("admin/menu/edit.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		request.setCharacterEncoding("utf-8");
		String menuID = request.getParameter("menuID");
		String menuN = request.getParameter("menuName");
		String actionN = request.getParameter("actionName");
		
		adminDao dataLoad = new adminDao();
		dataLoad.updatemenu(menuN, actionN, menuID);
		response.sendRedirect("admin-menu");
	}

}
