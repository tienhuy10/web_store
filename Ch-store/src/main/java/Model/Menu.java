package Model;

public class Menu {
	private int MenuID;
	private String MenuName;
	private boolean ActionName;
	private int MenuOrder;
	public Menu(int MenuID, String MenuName, boolean ActionName, int MenuOrder) {
		this.MenuID = MenuID;
		this.MenuName = MenuName;

		this.ActionName = ActionName;

		this.MenuOrder = MenuOrder;
	}

	public int getMenuID() {
		return MenuID;
	}

	public void setMenuID(int menuID) {
		MenuID = menuID;
	}

	public String getMenuName() {
		return MenuName;
	}

	public void setMenuName(String menuName) {
		MenuName = menuName;
	}

	public boolean getActionName() {
		return ActionName;
	}

	public void setActionName(boolean actionName) {
		ActionName = actionName;
	}


	public int getMenuOrder() {
		return MenuOrder;
	}

	public void setMenuOrder(int menuOrder) {
		MenuOrder = menuOrder;
	}

	@Override
	public String toString() {
		return "Menu [MenuID=" + MenuID + ", MenuName=" + MenuName + ", ActionName=" + ActionName + ", MenuOrder="
				+ MenuOrder + "]";
	}

}
