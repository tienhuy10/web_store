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
 * Servlet implementation class SignUpControl
 */
@WebServlet(name = "signup", urlPatterns = { "/signup" }) 
public class SignUpControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUpControl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("/admin/signup.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String repass = request.getParameter("repass");
		if(!password.equals(repass)) {
			request.setAttribute("messe", "Mật khẩu không chính xác");
			request.getRequestDispatcher("/admin/signup.jsp").forward(request, response);
		}
		else {
			adminDao dataload = new adminDao();
			Account account = dataload.checkAccount(username);
			if (account == null) {
				dataload.signup(username, password);
				response.sendRedirect(request.getContextPath() + "/login");
				
			}else {
				request.setAttribute("messe", "Tên tài khoản đã tồn tại");
				request.getRequestDispatcher("/admin/signup.jsp").forward(request, response);
			}
		}
	}

}
