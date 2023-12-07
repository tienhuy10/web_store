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
import Model.Menu;
import Model.Products;

public class DAO {
	Connection conn = null; // Kết nối SQL
	PreparedStatement ps = null; // Truy vấn sql
	ResultSet rs = null; // Nhận kết quẳ

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
		String query = "select top 8*from Products order by id desc";
		try {
			conn = new DBConnection().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				listProNew.add(new Products(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getDouble(5), rs.getString(6), rs.getInt(7)));
			}
		} catch (Exception e) {
		}
		return listProNew;
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
				listProducts.add(new Products(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getDouble(5), rs.getString(6), rs.getInt(7)));
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
				listProducts1.add(new Products(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getDouble(5), rs.getString(6), rs.getInt(7)));
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
				return (new Products(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getDouble(5),
						rs.getString(6), rs.getInt(7)));
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
				listCategories.add(new Category(rs.getInt(1), rs.getString(2)));
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
				searchProducts.add(new Products(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getDouble(5), rs.getString(6), rs.getInt(7)));
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
//    public List<Cart> getCartProducts(ArrayList<Cart> cartList) {
//        List<Cart> products = new ArrayList<>();
//        try {
//            if (cartList.size() > 0) {
//                for (Cart item : cartList) {
//                    String query = "select * from products where id=?";
//                    ps = this.conn.prepareStatement(query);
//                    ps.setInt(1, item.getID());
//                    rs = ps.executeQuery();
//                    while (rs.next()) {
//                        Cart row = new Cart();
//                        row.setID(rs.getInt("id"));
//                        row.setTitle("name");
//                        row.setDescription("category");
//                        row.setPrice(rs.getDouble("price")*item.getQuantity());
//                        row.setQuantity(item.getQuantity());
//                        products.add(row);
//                    }
//
//                }
//            }
//
//        } catch (SQLException e) {
//            e.printStackTrace();
//            System.out.println(e.getMessage());
//        }
//        return products;
//    }

	// order sản phẩm
	public void order(String IDProduct, String Price, String UserName, String Phone, String Email,
			String Address, String Contents) {
		String query = "INSERT INTO [Order] (IDProduct, Price, UserName, Phone, Email, Address, Contents)\r\n"
				+ "VALUES (?, ?, ?, ?, ?, ?, ?);";
		try {
			conn = new DBConnection().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			ps.setString(1, IDProduct);
			ps.setString(2, Price);
			ps.setString(3, UserName);
			ps.setString(4, Phone);
			ps.setString(5, Email);
			ps.setString(6, Address);
			ps.setString(7, Contents);
			ps.executeUpdate();

		} catch (Exception e) {

		}
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		DAO dataLoad = new DAO();
		List<Menu> listMenu = dataLoad.getAllMenus();
		List<Products> listProNew = dataLoad.getLast();
		List<Products> listProducts = dataLoad.getAllProducts();
		List<Category> listCategories = dataLoad.getAllCategories();
		List<Products> searchProducts = dataLoad.searchByName("a");

	}

}
