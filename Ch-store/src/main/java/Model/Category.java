package Model;

public class Category {
	@Override
	public String toString() {
		return "Category [ID=" + ID + ", Name=" + Name + ", images=" + images + "]";
	}


	private int ID;
	private String Name;
	private String images;

	public String getImages() {
		return images;
	}

	public void setImages(String images) {
		this.images = images;
	}

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


	public Category(int id, String name, String images) {
		this.ID = id;
		this.Name = name;
		this.images = images;
	}

}
