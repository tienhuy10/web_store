package adminController;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import Model.Category;
import Model.Products;
import dataAccessObject.DAO;
import dataAccessObject.adminDao;

/**
 * Servlet implementation class createProduct
 */
@MultipartConfig
@WebServlet(name = "product-create", urlPatterns = { "/product-create" })
public class createProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public createProduct() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("utf-8");
		
		DAO dataLoad = new DAO();
		List<Category> listCategories = dataLoad.getAllCategories();
		
		request.setAttribute("listCategories", listCategories);
		request.getRequestDispatcher("/admin/products/create.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("utf-8");
		
		Part part = request.getPart("image");
		String realPath = request.getServletContext().getRealPath("/images");
		String image = Path.of(part.getSubmittedFileName()).getFileName().toString();
		if (!Files.exists(Path.of(realPath))) {
			Files.createDirectories(Path.of(realPath));
		}
		part.write(realPath+"/"+image);
		
		String name = request.getParameter("name");	
		String price = request.getParameter("price");
		String info = request.getParameter("info");
		String category = request.getParameter("category");
		String quantity = request.getParameter("quantity");
		String capital_price = request.getParameter("capital_price");
		
		adminDao dataLoad = new adminDao();
		dataLoad.insertProduct(name, image, price, info, category, quantity, capital_price);
		
		
		response.sendRedirect("admin-products");
	}

}
