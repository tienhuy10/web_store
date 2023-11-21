package Model;

public class Account {
	@Override
	public String toString() {
		return "Account [ID=" + ID + ", username=" + username + ", password=" + password + ", isSell=" + isSell
				+ ", isAdmin=" + isAdmin + ", email=" + email + ", fullname=" + fullname + ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()="
				+ super.toString() + "]";
	}
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public String getusername() {
		return username;
	}
	public void setusername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getIsSell() {
		return isSell;
	}
	public void setIsSell(int isSell) {
		this.isSell = isSell;
	}
	public int getIsAdmin() {
		return isAdmin;
	}
	public void setIsAdmin(int isAdmin) {
		this.isAdmin = isAdmin;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	
	private int ID;
	private String username;
	private String password;
	private int isSell;
	private int isAdmin;
	private String email;
	private String fullname;
	
	public Account(int ID, String username, String password, int isSell, int isAdmin, String email, String fullname) {
		this.ID = ID;
		this.username = username;
		this.password = password;
		this.isSell = isSell;
		this.isAdmin = isAdmin;
		this.email = email;
		this.fullname = fullname;
	}
	
	
}
