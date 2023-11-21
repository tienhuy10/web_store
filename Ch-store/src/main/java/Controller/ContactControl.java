package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import Model.Menu;
import dataAccessObject.DAO;

/**
 * Servlet implementation class ContactControl
 */
@WebServlet(name = "Contact", urlPatterns = { "/Contact" })
public class ContactControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContactControl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		
		DAO dataLoad = new DAO();
		List<Menu> listMenu = dataLoad.getAllMenus();
		
		request.setAttribute("listM", listMenu);
		request.getRequestDispatcher("/views/Contact.jsp").forward(request, response);
		
		}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		
		
		String name = request.getParameter("name");
		String title = request.getParameter("image");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String contents = request.getParameter("contents");
		
		DAO dao = new DAO();
		dao.insertContact(name, title, phone, address, contents);
		response.sendRedirect("Contact");
	}

}