package dataAccessObject;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Model.Products;

public class ProductsDao {
	private Connection con;

	private String query;
	private PreparedStatement pst;
	private ResultSet rs;

	public ProductsDao(Connection con) {
		super();
		this.con = con;
	}

	public Products getSingleProduct(int id) {
		Products row = null;
		try {
			query = "select * from products where id=? ";

			pst = this.con.prepareStatement(query);
			pst.setInt(1, id);
			ResultSet rs = pst.executeQuery();

			while (rs.next()) {
				row = new Products();
				row.setID(rs.getInt(1));
				row.setName(rs.getString(2));
				row.setTitle(rs.getString(3));
				row.setImages(rs.getString(4));
				row.setPrice(rs.getDouble(5));			
				row.setDescription(rs.getString(6));
				row.setCateID(rs.getInt(7));
				row.setQuantity(rs.getInt(8));
				
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}

		return row;
	}

}
