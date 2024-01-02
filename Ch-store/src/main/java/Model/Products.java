package Model;

public class Products {

	@Override
	public String toString() {
		return "Products [ID=" + ID + ", Title=" + Title + ", Images=" + Images + ", Price=" + Price
				+ ", Description=" + Description + ", CateID=" + CateID + ", Quantity=" + Quantity + ", capital_price="
				+ capital_price + "]";
	}

	private int ID;	
	private String Title;
	private String Images;
	private Double Price;
	private String Description;
	private int CateID;
	private int Quantity;
	
	private Double capital_price;
	
	public Double getCapital_price() {
		return capital_price;
	}

	public void setCapital_price(Double capital_price) {
		this.capital_price = capital_price;
	}

	public Products() {
	}
	
	public int getQuantity() {
		return Quantity;
	}

	public void setQuantity(int quantity) {
		Quantity = quantity;
	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public String getTitle() {
		return Title;
	}

	public void setTitle(String title) {
		Title = title;
	}

	public String getImages() {
		return Images;
	}

	public void setImages(String images) {
		Images = images;
	}

	public Double getPrice() {
		return Price;
	}

	public void setPrice(Double price) {
		Price = price;
	}

	public String getDescription() {
		return Description;
	}

	public void setDescription(String description) {
		Description = description;
	}

	public int getCateID() {
		return CateID;
	}

	public void setCateID(int cateID) {
		CateID = cateID;
	}

	public Products(int id, String title, String images, Double price, String description,
			int cateID, int quantity, Double capital_price) {
		this.ID = id;
		this.Description = description;
		this.Images = images;
		this.Title = title;
		this.CateID = cateID;
		this.Price = price;
		this.Quantity = quantity;
		this.capital_price = capital_price;
	}
}
