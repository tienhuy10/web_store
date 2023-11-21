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
 * Servlet implementation class MenuControl
 */
@WebServlet(name = "Menu", urlPatterns = { "/Menu" })
public class MenuControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MenuControl() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");

        // Xử lý menuID
        String menuID = request.getParameter("menuID");
        if ("1".equals(menuID)) { // Nếu menuID là 1, chuyển hướng đến trang Home.jsp
            response.sendRedirect(request.getContextPath() + "/Home");
        } else if ("2".equals(menuID)) { // Nếu menuID là 2, chuyển hướng đến trang Products.jsp
            response.sendRedirect(request.getContextPath() + "/Products");
        } else if ("18".equals(menuID)) { // Nếu menuID là 2, chuyển hướng đến trang Products.jsp
            response.sendRedirect(request.getContextPath() + "/Contact");
        }else {
            // Nếu menuID không khớp với bất kỳ giá trị nào được xác định, chuyển hướng đến trang lỗi
            response.sendRedirect(request.getContextPath() + "/error.jsp");
        }
	}

}
