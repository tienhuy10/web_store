package adminController;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dataAccessObject.adminDao;

/**
 * Servlet implementation class createMenu
 */
@WebServlet(name = "menu-create", urlPatterns = { "/menu-create" })
public class createMenu extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public createMenu() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		request.setCharacterEncoding("utf-8");
		request.getRequestDispatcher("/admin/menu/create.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		request.setCharacterEncoding("utf-8");
		String menuN = request.getParameter("menuName");
		String actionN = request.getParameter("actionName");
		
		adminDao dataLoad = new adminDao();
		dataLoad.insertMenu(menuN, actionN);
		
		response.sendRedirect("admin-menu");
//		request.getRequestDispatcher("admin-menu").forward(request, response);
	}

}
