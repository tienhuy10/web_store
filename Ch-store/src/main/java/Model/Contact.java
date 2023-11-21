package Model;

public class Contact {
	
	public String toString() {
		return "Products [ID=" + ID + ", Name=" + Name + ", Title=" + Title + ", Phone=" + Phone + ", Address=" + Address
				+ ", Contents=" + Contents +"]";
	}


	private int ID;
	private String Name;
	private String Title;
	private String Phone;
	private String Address;
	private String Contents;


	

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
	
	public String getPhone() {
		return Phone;
	}

	public void setPhone(String phone) {
		Phone = phone;
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


	public Contact(int id, String name, String title,  String phone, String address, String contents) {
		this.ID = id;
		this.Name = name;
		this.Title = title;
		this.Phone = phone;
		this.Address = address;
		this.Contents = contents;
	}


}