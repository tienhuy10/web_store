package dataAccessObject;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import DataConnect.DBConnection;
import Model.Account;
import Model.Category;
import Model.Contact;
import Model.Menu;
import Model.Products;
import Model.Order;

public class adminDao {
	Connection conn = null; // Kết nối SQL
	PreparedStatement ps = null; // Truy vấn sql
	ResultSet rs = null; // Nhận kết quẳ

	// login tài khoản
	public Account login(String username, String password) {
		String query = "select * from Account where username = ? and password = ?";
		try {
			conn = new DBConnection().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			ps.setString(1, username);
			ps.setString(2, password);
			rs = ps.executeQuery();
			while (rs.next()) {
				return new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5),
						rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9));
			}

		} catch (Exception e) {
		}

		return null;
	}

	// kiểm tra tài khoản đã tồn tại chưa
	public Account checkAccount(String username) {
		String query = "select * from Account where username = ?";
		try {
			conn = new DBConnection().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			ps.setString(1, username);
			rs = ps.executeQuery();
			while (rs.next()) {
				return new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5),
						rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9));
			}

		} catch (Exception e) {
		}

		return null;
	}

	// Đăng kí tài khoản (insert)
	public void signup(String username, String password, String email, String fullname, String address, String phone) {
		String query = "insert into Account values (?, ?,0,0,?,?,?,?)";
		try {
			conn = new DBConnection().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			ps.setString(1, username);
			ps.setString(2, password);
			ps.setString(3, email);
			ps.setString(4, fullname);
			ps.setString(5, address);
			ps.setString(6, phone);
			ps.executeUpdate();

		} catch (Exception e) {

		}
	}

	// Lấy danh sách dữ liệu tài khoản
	public List<Account> getAllAccounts() {
		List<Account> listAcc = new ArrayList<>();
		String query = "select*from Account";
		try {
			conn = new DBConnection().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				listAcc.add(new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5),
						rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9)));
			}
		} catch (Exception e) {
		}
		return listAcc;
	}

	// Xóa tài khoản
	public void deleteAccont(String id) {
		String query = "delete from Account where ID = ?";
		try {
			conn = new DBConnection().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			ps.setString(1, id);
			ps.executeUpdate();

		} catch (Exception e) {
		}
	}

	// Cập nhật tài khoản
	public void editAccount(String username, String password, String email, String fullname, String id) {
		String query = "update Account set username = ?, password = ?, email=?, fullname=? where ID = ?";
		try {
			conn = new DBConnection().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			ps.setString(1, username);
			ps.setString(2, password);
			ps.setString(3, email);
			ps.setString(4, fullname);
			ps.setString(5, id);
			ps.executeUpdate();

		} catch (Exception e) {

		}
	}

	// lấy danh sách dữ liệu account theo id
	public Account getAccountID(String id) {
		String query = "select*from account where ID = ?";
		try {
			conn = new DBConnection().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			ps.setString(1, id);
			rs = ps.executeQuery();
			while (rs.next()) {
				return (new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5),
						rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9)));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	// Thêm mới Menu (insert)
	public void insertMenu(String menuN, String actionN) {
		String query = "insert into Menu ([MenuName], [ActionName])\r\n" + "values (?, ?)";
		try {
			conn = new DBConnection().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			ps.setString(1, menuN);
			ps.setString(2, actionN);
			ps.executeUpdate();

		} catch (Exception e) {

		}
	}

	// Lấy danh sách dữ liệu bảng Menu
	public List<Menu> getAllMenus() {
		List<Menu> listMenu = new ArrayList<>();
		String query = "select * from menu";
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

	// Xóa dữ liệu Menu
	public void deleteMenu(String id) {
		String query = "delete from menu where MenuID = ?";
		try {
			conn = new DBConnection().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			ps.setString(1, id);
			ps.executeUpdate();

		} catch (Exception e) {
		}
	}

	// lấy danh sách dữ liệu Menu theo id
	public Menu getMenuID(String menuID) {
		String query = "select*from menu where MenuID = ?";
		try {
			conn = new DBConnection().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			ps.setString(1, menuID);
			rs = ps.executeQuery();
			while (rs.next()) {
				return (new Menu(rs.getInt(1), rs.getString(2), rs.getBoolean(3), rs.getInt(4)));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	// Cập nhật Menu (Update)
	public void updatemenu(String menuN, String actionN, String menuID) {
		String query = "update Menu set MenuName = ?, ActionName = ? where MenuID = ?";
		try {
			conn = new DBConnection().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			ps.setString(1, menuN);
			ps.setString(2, actionN);
			ps.setString(3, menuID);
			ps.executeUpdate();

		} catch (Exception e) {

		}
	}

	// lấy danh sách dữ liệu tất cả sản phẩm bảng product
	public List<Products> getAllProducts() {
		List<Products> listProducts = new ArrayList<>();
		String query = "select*from Products order by id desc";
		try {
			conn = new DBConnection().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				listProducts.add(new Products(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getDouble(5), rs.getString(6), rs.getInt(7), rs.getInt(8), rs.getDouble(9)));
			}
		} catch (Exception e) {
		}
		return listProducts;
	}

	// Xóa dữ liệu sản phẩm
	public void deleteProduct(String id) {
		String query = "delete from Products where ID = ?";
		try {
			conn = new DBConnection().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			ps.setString(1, id);
			ps.executeUpdate();

		} catch (Exception e) {
		}
	}

	// Thêm mới sản phẩm (insert)
	public void insertProduct(String name, String image, String price, String info, String category, String quantity,
			String capital_price) {
		String query = "INSERT INTO Products (Title, Images, Price, Description, CateID, Quantity, capital_price)\r\n"
				+ "VALUES (?, ?, ?, ?, ?, ?, ?);";
		try {
			conn = new DBConnection().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			ps.setString(1, name);
			ps.setString(2, image);
			ps.setString(3, price);
			ps.setString(4, info);
			ps.setString(5, category);
			ps.setString(6, quantity);
			ps.setString(7, capital_price);
			ps.executeUpdate();

		} catch (Exception e) {

		}
	}

	// Cập nhật sản phẩm (Update)
	public void editProduct(String name, String image, String price, String info, String category, String quantity,
			String capital_price, String id) {
		String query = "update Products set Title = ?, Images = ?, Price = ?, Description = ?, CateID = ?, Quantity = ?, capital_price = ? where ID = ?";
		try {
			conn = new DBConnection().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			ps.setString(1, name);
			ps.setString(2, image);
			ps.setString(3, price);
			ps.setString(4, info);
			ps.setString(5, category);
			ps.setString(6, quantity);
			ps.setString(7, capital_price);
			ps.setString(8, id);
			ps.executeUpdate();

		} catch (Exception e) {

		}
	}

	// Xem thông tin liên hệ
	// lấy danh sách dữ liệu liên hệ
	public List<Contact> getAllContacts() {
		List<Contact> listContacts = new ArrayList<>();
		String query = "select*from Contact order by id desc";
		try {
			conn = new DBConnection().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				listContacts.add(new Contact(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getString(6)));
			}
		} catch (Exception e) {
		}
		return listContacts;
	}

	// Xóa dữ liệu liên hệ
	public void deleteContact(String id) {
		String query = "delete from Contact where ID = ?";
		try {
			conn = new DBConnection().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			ps.setString(1, id);
			ps.executeUpdate();

		} catch (Exception e) {
		}
	}

	// lấy danh sách dữ liệu danh mục
	public List<Category> getAllCategory() {
		List<Category> listCtg = new ArrayList<>();
		String query = "select * from Categories";
		try {
			conn = new DBConnection().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				listCtg.add(new Category(rs.getInt(1), rs.getString(2)));
			}
		} catch (Exception e) {
		}
		return listCtg;
	}

	// Thêm mới danh mục
	public void insertCategory(String name) {
		String query = "insert into Categories (Name) values (?)";
		try {
			conn = new DBConnection().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			ps.setString(1, name);
			ps.executeUpdate();

		} catch (Exception e) {

		}
	}

	// Xóa dữ liệu danh mục
	public void deleteCategory(String id) {
		String query = "delete from Categories where ID = ?";
		try {
			conn = new DBConnection().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			ps.setString(1, id);
			ps.executeUpdate();

		} catch (Exception e) {
		}
	}

	// lấy danh sách dữ liệu danh mục theo id
	public Category getCateID(String ID) {
		String query = "select*from Categories where ID = ?";
		try {
			conn = new DBConnection().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			ps.setString(1, ID);
			rs = ps.executeQuery();
			while (rs.next()) {
				return (new Category(rs.getInt(1), rs.getString(2)));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	// Chỉnh sửa danh mục
	public void editCategory(String name, String id) {
		String query = "update Categories set Name = ? where ID = ?";
		try {
			conn = new DBConnection().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			ps.setString(1, name);
			ps.setString(2, id);
			ps.executeUpdate();

		} catch (Exception e) {

		}
	}

//	public List<Order> getAllOrder() {
//		List<Order> listOrder = new ArrayList<>();
//		String query = "SELECT * FROM [Order]";
//		try {
//			conn = new DBConnection().getConnection();// mo ket noi voi sql
//			ps = conn.prepareStatement(query);
//			rs = ps.executeQuery();
//			while (rs.next()) {
//				listOrder.add(new Order(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getDouble(4), rs.getString(5),
//						rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9)));
//			}
//		} catch (Exception e) {
//		}
//		return listOrder;
//	}

	// Xóa dữ liệu cart
	public void deleteCart(String id) {
		String query = "delete from [Order] where ID = ?";
		try {
			conn = new DBConnection().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			ps.setString(1, id);
			ps.executeUpdate();
		} catch (Exception e) {
		}
	}

	// Thống kê
	// Thống kế người dùng
	public int getAdminAccounts() throws Exception {
		int count = 0;
		String query = "SELECT COUNT(*) FROM Account WHERE isAdmin = 0";

		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();

			if (rs.next()) {
				count = rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (ps != null)
					ps.close();
				if (conn != null)
					conn.close();
			} catch (SQLException ex) {
				ex.printStackTrace();
			}
		}

		return count;
	}

	// Thống kê sản phẩm
	public int getAdminProducts() throws Exception {
		int count = 0;
		String query = "SELECT SUM(Quantity) FROM Products";

		try (Connection conn = new DBConnection().getConnection();
				PreparedStatement ps = conn.prepareStatement(query);
				ResultSet rs = ps.executeQuery()) {

			if (rs.next()) {
				count = rs.getInt(1);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return count;
	}

	public static void main(String[] args) {
//		// TODO Auto-generated method stub
		adminDao dataLoad = new adminDao();
//		dataLoad.updatemenu("cccc", "1", "20");

//		Category menu = dataLoad.getCateID("1");
//		System.out.println(menu);

//		Account account = dataLoad.login("admin", "12345");
//		System.out.println(account);

//		List<Order> listOrder = dataLoad.getAllOrder();
//		for (Order o : listOrder) {
//			System.out.println(o);
//		}

	}
}
