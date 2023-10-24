package Model;

public class Category {
	@Override
	public String toString() {
		return "Category [ID=" + ID + ", Name=" + Name + "]";
	}


	private int ID;
	private String Name;

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


	public Category(int id, String name) {
		this.ID = id;
		this.Name = name;
	}

}
