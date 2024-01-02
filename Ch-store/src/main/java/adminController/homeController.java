package adminController;

import java.io.IOException;
import java.sql.Connection;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DataConnect.DBConnection;
import Model.Account;
import Model.ProductOrderInfo;
import dataAccessObject.OrderDao;
import dataAccessObject.adminDao;

/**
 * Servlet implementation class homeController
 */
@WebServlet(name = "home-admin", urlPatterns = { "/home-admin" })
public class homeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public homeController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        response.setCharacterEncoding("utf-8");
        
        OrderDao orderDao;
		try {
			orderDao = new OrderDao(DBConnection.getConnection());
			ProductOrderInfo productOrderInfo = orderDao.getProductOrderInfo();
			request.setAttribute("tienloi", productOrderInfo);
		} catch (Exception e) {			
			e.printStackTrace();
		}
		
		

        adminDao dataLoad = new adminDao();

        // Lấy số lượng tài khoản không phải admin
        int adminCount = 0;
        try {
            adminCount = dataLoad.getAdminAccounts();
        } catch (Exception e) {
            e.printStackTrace();
        }
        request.setAttribute("adminCount", adminCount);
        
        // Lấy số lượng danh mục
        int CateCount = 0;
        try {
        	CateCount = dataLoad.getSumCate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        request.setAttribute("CateCount", CateCount);

        // Lấy số lượng sản phẩm
        int adminProducts = 0;
		try {
			adminProducts = dataLoad.getAdminProducts();
		} catch (Exception e) {
			e.printStackTrace();
		}
        request.setAttribute("adminProducts", adminProducts);

        request.getRequestDispatcher("admin/home.jsp").forward(request, response);
    }




	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}