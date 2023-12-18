package Model;

public class Order extends Products {
	private int o_id;
	private int u_id;
	private int o_quantity;
	private String o_date;

	public Order() {
	}

	public Order(int orderId, int uid, int quantity, String date) {
		super();
		this.o_id = orderId;
		this.u_id = uid;
		this.o_quantity = quantity;
		this.o_date = date;
	}

	public Order(int uid, int quantity, String date) {
		super();
		this.u_id = uid;
		this.o_quantity = quantity;
		this.o_date = date;
	}

	public int getOrderId() {
		return o_id;
	}

	public void setOrderId(int orderId) {
		this.o_id = orderId;
	}

	public int getUid() {
		return u_id;
	}

	public void setUid(int uid) {
		this.u_id = uid;
	}

	public int getQuantity() {
		return o_quantity;
	}

	public void setQuantity(int quantity) {
		this.o_quantity = quantity;
	}

	public String getDate() {
		return o_date;
	}

	public void setDate(String date) {
		this.o_date = date;
	}

	@Override
	public String toString() {
		return "Order [orderId=" + o_id + ", uid=" + u_id + ", quantity=" + o_quantity + ", date=" + o_date + "]";
	}

}
