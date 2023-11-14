package dataAccessObject;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import DataConnect.DBConnection;
import Model.Account;
import Model.Menu;
import Model.Products;

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
				return new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5));
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
				return new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5));
			}

		} catch (Exception e) {
		}

		return null;
	}

	// Đăng kí tài khoản (insert)
	public void signup(String username, String password) {
		String query = "insert into Account values (?, ? ,0,0)";
		try {
			conn = new DBConnection().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			ps.setString(1, username);
			ps.setString(2, password);
			ps.executeUpdate();

		} catch (Exception e) {

		}
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

	// lấy danh sách dữ liệu tất cả sản phẩm bảng product
	public List<Products> getAllProducts() {
		List<Products> listProducts = new ArrayList<>();
		String query = "select*from Products";
		try {
			conn = new DBConnection().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				listProducts.add(new Products(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getString(6), rs.getInt(7)));
			}
		} catch (Exception e) {
		}
		return listProducts;
	}

	public static void main(String[] args) {
//		// TODO Auto-generated method stub
//		adminDao dataLoad = new adminDao();
//		Account account = dataLoad.insertMenu("liên hệ");
//		System.out.println(account);

	}
}
