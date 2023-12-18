package dataAccessObject;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import DataConnect.DBConnection;
import Model.Bill;
import Model.Category;
import Model.Order;
import Model.ProductOrderInfo;
import Model.Products;
import Model.UserOrderInfo;

public class OrderDao {
	private Connection con;

	private String query;
	private PreparedStatement pst;
	private ResultSet rs;

	public OrderDao(Connection con) {
		super();
		this.con = con;
	}

	public boolean insertOrder(Order model) {
		boolean result = false;
		try {
			query = "insert into orders (p_id, u_id, o_quantity, o_date) values(?,?,?,?)";
			pst = this.con.prepareStatement(query);
			pst.setInt(1, model.getID());
			pst.setInt(2, model.getUid());
			pst.setInt(3, model.getQuantity());
			pst.setString(4, model.getDate());
			pst.executeUpdate();
			result = true;
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		return result;
	}

	public List<Order> userOrders(int id) {
		List<Order> list = new ArrayList<>();
		try {
			query = "select * from orders where u_id=? order by orders.o_id desc";
			pst = this.con.prepareStatement(query);
			pst.setInt(1, id);
			rs = pst.executeQuery();
			while (rs.next()) {
				Order order = new Order();
				ProductsDao productDao = new ProductsDao(this.con);
				int pId = rs.getInt("p_id");
				Products product = productDao.getSingleProduct(pId);
				order.setOrderId(rs.getInt("o_id"));
				order.setID(pId);
				order.setTitle(product.getTitle());
				order.setCateID(product.getCateID());
				order.setPrice(product.getPrice() * rs.getInt("o_quantity"));
				order.setQuantity(rs.getInt("o_quantity"));
				order.setDate(rs.getString("o_date"));
				list.add(order);
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		return list;
	}

	public void cancelOrder(int id) {
		// boolean result = false;
		try {
			query = "delete from orders where o_id=?";
			pst = this.con.prepareStatement(query);
			pst.setInt(1, id);
			pst.execute();
			// result = true;
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.print(e.getMessage());
		}
		// return result;
	}

	public List<UserOrderInfo> UserOrderInfo() {
		List<UserOrderInfo> userOrderList = new ArrayList<>();
		try {
			query = "SELECT account.ID AS user_id,\r\n" + "    COUNT(orders.o_id) AS total_products,\r\n"
					+ "    COALESCE(SUM(products.Price * orders.o_quantity), 0) AS total_price,\r\n"
					+ "    account.phone, account.address, account.fullname, orders.o_date\r\n"
					+ "FROM account LEFT JOIN orders ON account.ID = orders.u_id LEFT JOIN\r\n"
					+ "    products ON orders.p_id = products.ID\r\n"
					+ "GROUP BY account.ID, account.phone, account.address, account.fullname, orders.o_date\r\n"
					+ "HAVING COUNT(orders.o_id) > 0;";

			pst = this.con.prepareStatement(query);
			rs = pst.executeQuery();

			while (rs.next()) {
				int userId = rs.getInt("user_id");
				int totalProducts = rs.getInt("total_products");
				double total_price = rs.getDouble("total_price");
				String phone = rs.getString("phone");
				String address = rs.getString("address");
				String fullname = rs.getString("fullname");
				String orderDate = rs.getString("o_date");

				UserOrderInfo userOrderInfo = new UserOrderInfo(userId, totalProducts, total_price, phone, address,
						fullname, orderDate);
				userOrderList.add(userOrderInfo);
			}

		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		return userOrderList;
	}

	// Hiển thị thông tin sản phẩm chi tiết theo id người dùng
	public List<Bill> getBillInfoForUser(String id) {
		List<Bill> billList = new ArrayList<>();
		try {
			String query = "SELECT " + "    products.ID AS product_id, " + "    products.title AS product_name, "
					+ "    products.Price AS product_price, " + "    orders.o_quantity, " + "    orders.o_date "
					+ "FROM orders " + "JOIN products ON orders.p_id = products.ID "
					+ "JOIN account ON orders.u_id = account.ID " + "WHERE account.ID = ?";
			PreparedStatement pst = this.con.prepareStatement(query);
			pst.setString(1, id);
			ResultSet rs = pst.executeQuery();

			while (rs.next()) {
				int productId = rs.getInt("product_id");
				String productName = rs.getString("product_name");
				double productPrice = rs.getDouble("product_price");
				int orderQuantity = rs.getInt("o_quantity");
				String orderDate = rs.getString("o_date");

				Bill bill = new Bill(productId, productName, productPrice, orderQuantity, orderDate);
				billList.add(bill);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		return billList;
	}

	// Thống kê tiền lời
	public ProductOrderInfo getProductOrderInfo() {
		ProductOrderInfo productOrderInfo = null;
		try {
			String query = "SELECT " + "SUM(o.o_quantity) AS tong_sp, "
					+ "SUM(o.o_quantity * p.capital_price) AS tong_von, " + "SUM(o.o_quantity * p.Price) AS tong_ban, "
					+ "SUM(o.o_quantity * (p.Price - p.capital_price)) AS tong_loi "
					+ "FROM orders o INNER JOIN products p ON o.p_id = p.ID";

			try (PreparedStatement preparedStatement = this.con.prepareStatement(query)) {
				try (ResultSet resultSet = preparedStatement.executeQuery()) {
					if (resultSet.next()) {
						int totalProducts = resultSet.getInt("tong_sp");
						double totalCapital = resultSet.getDouble("tong_von");
						double totalSales = resultSet.getDouble("tong_ban");
						double totalProfit = resultSet.getDouble("tong_loi");

						productOrderInfo = new ProductOrderInfo(totalProducts, totalCapital, totalSales, totalProfit);
					}
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		return productOrderInfo;
	}

	public static void main(String[] args) throws Exception {
		try {
			// Lấy đối tượng Connection từ DBConnection
			Connection connection = DBConnection.getConnection();

			// Khởi tạo đối tượng OrderDao với đối tượng Connection
			OrderDao orderDao = new OrderDao(connection);

			// Gọi hàm để lấy thông tin đơn hàng của sản phẩm
			ProductOrderInfo productOrderInfo = orderDao.getProductOrderInfo();

			// In ra kết quả kiểm tra
			if (productOrderInfo != null) {
				System.out.println("Thông tin sản phẩm:");
				System.out.println("Tổng Sản phẩm đã bán: " + productOrderInfo.getTotalProducts());
				System.out.println("Tổng tiền lời: " + productOrderInfo.getTotalCapital());
				System.out.println("Tổng tiền bán: " + productOrderInfo.getTotalSales());
				System.out.println("Tổng số tiền bán: " + productOrderInfo.getTotalProfit());
			} else {
				System.out.println("Không có thông tin đơn hàng.");
			}
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
	}

}
