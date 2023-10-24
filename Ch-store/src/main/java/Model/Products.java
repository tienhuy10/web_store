package Model;

public class Products {
	@Override
	public String toString() {
		return "Products [ID=" + ID + ", Name=" + Name + ", Title=" + Title + ", Images=" + Images + ", Price=" + Price
				+ ", Description=" + Description + ", CateID=" + CateID + "]";
	}

	private int ID;
	private String Name;
	private String Title;
	private String Images;
	private String Price;
	private String Description;
	private int CateID;

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
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

	public String getPrice() {
		return Price;
	}

	public void setPrice(String price) {
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

	public Products(int id, String name, String title, String images, String price, String description,
			int cateID) {
		this.ID = id;
		this.Name = name;
		this.Description = description;
		this.Images = images;
		this.Title = title;
		this.CateID = cateID;
		this.Price = price;
	}



}
