package adminController;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Account;
import dataAccessObject.adminDao;

/**
 * Servlet implementation class LoginControl
 */
@WebServlet(name = "Login", urlPatterns = { "/login" })
public class LoginControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginControl() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("admin/login.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		adminDao dataLoad = new adminDao();
		Account account = dataLoad.login(username, password);
		if (account == null) {
			request.setAttribute("mess", "Tên đăng nhập hoặc mật khẩu sai!");
			request.getRequestDispatcher("/admin/login.jsp").forward(request, response);
		} else {
			
			response.sendRedirect(request.getContextPath() + "/home-admin");
		}
	} 

}
