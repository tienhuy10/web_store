package dataAccessObject;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import DataConnect.DBConnection;
import Model.Account;
import Model.Cart;
import Model.Category;
import Model.Menu;
import Model.Products;
import Model.TopProduct;
import Model.UserOrderInfo;

public class DAO {
	Connection conn = null; // Kết nối SQL
	PreparedStatement ps = null; // Truy vấn sql
	ResultSet rs = null; // Nhận kết quẳ

	public DAO() {

	}

	public void setConnection(Connection conn) {
		this.conn = conn;
	}

	// Lấy danh sách dữ liệu bảng Menu
	public List<Menu> getAllMenus() {
		List<Menu> listMenu = new ArrayList<>();
		String query = "select * from menu where actionname = 1";
		try {
			conn = new DBConnection().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				listMenu.add(new Menu(rs.getInt(1), rs.getString(2), rs.getBoolean(3), rs.getInt(4)));
			}
		} catch (Exception e) {
		}
		return listMenu;
	}

	// lấy danh sách dữ liệu sản phẩm mới nhất bảng product
	public List<Products> getLast() {
		List<Products> listProNew = new ArrayList<>();
		String query = "select top 16*from Products order by id desc";
		try {
			conn = new DBConnection().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				listProNew.add(new Products(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4),
						rs.getString(5), rs.getInt(6), rs.getInt(7), rs.getDouble(8)));
			}
		} catch (Exception e) {
		}
		return listProNew;
	}

	// Lấy danh sách dữ liệu sản phẩm bán chạy
	public List<TopProduct> getTopProducts() {
		List<TopProduct> topProducts = new ArrayList<>();
		String query = "SELECT TOP 8 p.ID, p.Images, p.Title, p.Price, SUM(o.o_quantity) AS TotalQuantitySold\r\n"
				+ "FROM orders o JOIN products p ON o.p_id = p.ID WHERE p.Quantity IS NOT NULL\r\n"
				+ "GROUP BY p.ID, p.Images, p.Title, p.Price ORDER BY TotalQuantitySold DESC;\r\n" + "";
		try {
			conn = new DBConnection().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				topProducts.add(
						new TopProduct(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4), rs.getInt(5)));
			}
		} catch (Exception e) {
		}
		return topProducts;
	}

	// lấy danh sách dữ liệu tất cả sản phẩm bảng product
	public List<Products> getAllProducts() {
		List<Products> listProducts = new ArrayList<>();
		String query = "select*from Products ORDER BY ID DESC";
		try {
			conn = new DBConnection().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				listProducts.add(new Products(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4),
						rs.getString(5), rs.getInt(6), rs.getInt(7), rs.getDouble(8)));
			}
		} catch (Exception e) {
		}
		return listProducts;
	}

	// lấy danh sách dữ liệu sản phẩm theo category
	public List<Products> getProductsbyCate(String id) {
		List<Products> listProducts1 = new ArrayList<>();
		String query = "select*from Products where CateID = ?";
		try {
			conn = new DBConnection().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			ps.setString(1, id);
			rs = ps.executeQuery();
			while (rs.next()) {
				listProducts1.add(new Products(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4),
						rs.getString(5), rs.getInt(6), rs.getInt(7), rs.getDouble(8)));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return listProducts1;
	}

//	// lấy dữ liệu sản phẩm theo ID
	public Products getProductsbyID(String id) {
		String query = "select*from Products where id = ?";
		try {
			conn = new DBConnection().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			ps.setString(1, id);
			rs = ps.executeQuery();
			while (rs.next()) {
				return (new Products(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4), rs.getString(5),
						rs.getInt(6), rs.getInt(7), rs.getDouble(8)));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	// Lấy danh sách dữ liệu Category
	public List<Category> getAllCategories() {
		List<Category> listCategories = new ArrayList<>();
		String query = "select*from Categories";
		try {
			conn = new DBConnection().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				listCategories.add(new Category(rs.getInt(1), rs.getString(2), rs.getString(3)));
			}
		} catch (Exception e) {
		}
		return listCategories;
	}

//	// lấy dữ liệu sản phẩm người dùng tìm kiếm
	public List<Products> searchByName(String txtSeach) {
		List<Products> searchProducts = new ArrayList<>();
		String query = "select*from [Products] where Title like ?";
		try {
			conn = new DBConnection().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			ps.setString(1, "%" + txtSeach + "%");
			rs = ps.executeQuery();
			while (rs.next()) {
				searchProducts.add(new Products(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4),
						rs.getString(5), rs.getInt(6), rs.getInt(7), rs.getDouble(8)));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return searchProducts;
	}

	// Liên hệ
	public void insertContact(String name, String title, String phone, String address, String contents) {
		String query = "insert into Contact ([Name], Title, Phone, Address, Contents) values (?,?,?,?,?);";
		try {
			conn = new DBConnection().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			ps.setString(1, name);
			ps.setString(2, title);
			ps.setString(3, phone);
			ps.setString(4, address);
			ps.setString(5, contents);
			ps.executeUpdate();

		} catch (Exception e) {

		}
	}

	// Danh sách giỏ hàng
	public List<Cart> getCartProducts(ArrayList<Cart> cartList) {
		List<Cart> cartProducts = new ArrayList<>();
		try {
			if (cartList.size() > 0) {
				for (Cart item : cartList) {
					String query = "select * from products where id=?";
					ps = conn.prepareStatement(query);
					ps.setInt(1, item.getID());
					rs = ps.executeQuery();
					while (rs.next()) {
						Cart row = new Cart();
						// Set các thuộc tính chung từ Products
						row.setID(rs.getInt("id"));
						row.setTitle(rs.getString("title"));
						row.setImages(rs.getString("images"));
						row.setPrice(rs.getDouble("price") * item.getQuantity());
						row.setQuantity(item.getQuantity());
						cartProducts.add(row);
					}
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		return cartProducts;
	}

	public double getTotalCartPrice(ArrayList<Cart> cartList) {
		double sum = 0;
		try {
			if (cartList.size() > 0) {
				for (Cart item : cartList) {
					String query = "select price from products where id=?";
					ps = conn.prepareStatement(query);
					ps.setInt(1, item.getID());
					rs = ps.executeQuery();
					while (rs.next()) {
						sum += rs.getDouble("price") * item.getQuantity();
					}

				}
			}

		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		return sum;
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		DAO dataLoad = new DAO();
		List<Menu> listMenu = dataLoad.getAllMenus();
		List<Products> listProNew = dataLoad.getLast();
		List<Products> listProducts = dataLoad.getAllProducts();
		List<TopProduct> topProducts = dataLoad.getTopProducts();
		List<Category> listCategories = dataLoad.getAllCategories();
		List<Products> searchProducts = dataLoad.searchByName("a");

//		List<UserOrderInfo> userOrderList = dataLoad.UserOrderInfo();
		for (TopProduct o : topProducts) {
			System.out.println(o);
		}

	}

}
