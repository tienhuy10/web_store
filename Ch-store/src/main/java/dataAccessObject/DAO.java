package dataAccessObject;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import DataConnect.DBConnection;
import Model.Category;
import Model.Menu;
import Model.Products;

public class DAO {
	Connection conn = null; // Kết nối SQL
	PreparedStatement ps = null; // Truy vấn sql
	ResultSet rs = null; // Nhận kết quẳ

	// Lấy dữ liệu bảng Menu
	public List<Menu> getAllMenus() {
		List<Menu> listMenu = new ArrayList<>();
		String query = "select * from menu";
		try {
			conn = new DBConnection().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				listMenu.add(new Menu(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5),
						rs.getInt(6)));
			}
		} catch (Exception e) {
		}
		return listMenu;
	}

	// lấy dữ liệu sản phẩm mới nhất bảng product
	public List<Products> getLast() {
		List<Products> listProNew = new ArrayList<>();
		String query = "select top 8*from Products order by id desc";
		try {
			conn = new DBConnection().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				listProNew.add(new Products(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getString(6), rs.getInt(7)));
			}
		} catch (Exception e) {
		}
		return listProNew;
	}

	// lấy dữ liệu tất cả sản phẩm bảng product
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
	
	// lấy dữ liệu sản phẩm theo category
	public List<Products> getProductsbyCate(String id) {
		List<Products> listProducts1 = new ArrayList<>();
		String query = "select*from Products where CateID = ?";
		try {
			conn = new DBConnection().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			ps.setString(1, id);
			rs = ps.executeQuery();
			while (rs.next()) {
				listProducts1.add(new Products(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getString(6), rs.getInt(7)));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return listProducts1;
	}

	// Lấy dữ liệu Category
	public List<Category> getAllCategories() {
		List<Category> listCategories = new ArrayList<>();
		String query = "select*from Categories";
		try {
			conn = new DBConnection().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				listCategories.add(new Category(rs.getInt(1), rs.getString(2)));
			}
		} catch (Exception e) {
		}
		return listCategories;
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		DAO dataLoad = new DAO();
		List<Menu> listMenu = dataLoad.getAllMenus();
		List<Products> listProNew = dataLoad.getLast();
		List<Products> listProducts = dataLoad.getAllProducts();
		List<Category> listCategories = dataLoad.getAllCategories();
		List<Products> listProducts1 = dataLoad.getProductsbyCate("1");

		for (Menu o : listMenu) {
			System.out.println(o);
		}

	}

}
