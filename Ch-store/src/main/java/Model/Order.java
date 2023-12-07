package Model;

public class Order {
	private int ID;
	private int IDProduct;
	private int Quantity;
	private double Price;
	private String UserName;
	private String Phone;
	private String Email;
	private String Address;
	private String Contents;

	public Order(int ID, int IDProduct, int Quantity, double Price, String UserName, String Phone, String Email,
			String Address, String Contents) {
		this.ID = ID;
		this.IDProduct = IDProduct;
		this.Quantity = Quantity;
		this.Price = Price;
		this.UserName = UserName;
		this.Phone = Phone;
		this.Email = Email;
		this.Address = Address;
		this.Contents = Contents;
	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public int getIDProduct() {
		return IDProduct;
	}

	public void setIDProduct(int iDProduct) {
		IDProduct = iDProduct;
	}

	public int getQuantity() {
		return Quantity;
	}

	public void setQuantity(int quantity) {
		Quantity = quantity;
	}

	public double getPrice() {
		return Price;
	}

	public void setPrice(double price) {
		Price = price;
	}

	public String getUserName() {
		return UserName;
	}

	public void setUserName(String userName) {
		UserName = userName;
	}

	public String getPhone() {
		return Phone;
	}

	public void setPhone(String phone) {
		Phone = phone;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getAddress() {
		return Address;
	}

	public void setAddress(String address) {
		Address = address;
	}

	public String getContents() {
		return Contents;
	}

	public void setContents(String contents) {
		Contents = contents;
	}

	@Override
	public String toString() {
		return "Order [ID=" + ID + ", IDProduct=" + IDProduct + ", Quantity=" + Quantity + ", Price=" + Price
				+ ", UserName=" + UserName + ", Phone=" + Phone + ", Email=" + Email + ", Address=" + Address
				+ ", Contents=" + Contents + "]";
	}

}
