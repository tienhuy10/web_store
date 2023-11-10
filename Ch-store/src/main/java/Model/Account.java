package Model;

public class Account {
	@Override
	public String toString() {
		return "Account [ID=" + ID + ", username=" + username + ", password=" + password + ", isSell=" + isSell
				+ ", isAdmin=" + isAdmin + ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()="
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
	private int ID;
	private String username;
	private String password;
	private int isSell;
	private int isAdmin;
	
	public Account(int ID, String username, String password, int isSell, int isAdmin) {
		this.ID = ID;
		this.username = username;
		this.password = password;
		this.isSell = isSell;
		this.isAdmin = isAdmin;
	}
	
	
}
