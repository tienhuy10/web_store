package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


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

		// Nhận giá trị menuID từ request
		String menuID = request.getParameter("menuID");

		// Kiểm tra giá trị menuID và chuyển hướng đến trang tương ứng
		if ("1".equals(menuID)) { // Giả sử menuID 1 là menu Home
			response.sendRedirect(request.getContextPath() + "/Home");
		} else if ("2".equals(menuID)) { // Giả sử menuID 2 là menu Products
			response.sendRedirect(request.getContextPath() + "/Products");
		} else {
			// Xử lý nếu menuID không khớp với bất kỳ menu nào khác (có thể chuyển hướng đến
			// trang lỗi)
			response.sendRedirect(request.getContextPath() + "/error.jsp");
		}
	}

}
