package dataAccessObject;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import DataConnect.DBConnection;
import Model.Account;

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
	
	//Đăng kí tài khoản (insert)
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
 
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		adminDao dataLoad = new adminDao();
		Account account = dataLoad.checkAccount("admina");
		System.out.println(account);

	}
}
