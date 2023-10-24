package Model;

public class Menu {
	private int MenuID;
	private String MenuName;
	private String ControllerName;
	private String ActionName;
	private int ParentID;
	private int MenuOrder;

	public Menu(int MenuID, String MenuName, String ControllerName, String ActionName, int ParentID, int MenuOrder) {
		this.MenuID = MenuID;
		this.MenuName = MenuName;
		this.ControllerName = ControllerName;
		this.ActionName = ActionName;
		this.ParentID = ParentID;
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

	public String getControllerName() {
		return ControllerName;
	}

	public void setControllerName(String controllerName) {
		ControllerName = controllerName;
	}

	public String getActionName() {
		return ActionName;
	}

	public void setActionName(String actionName) {
		ActionName = actionName;
	}

	public int getParentID() {
		return ParentID;
	}

	public void setParentID(int parentID) {
		ParentID = parentID;
	}

	public int getMenuOrder() {
		return MenuOrder;
	}

	public void setMenuOrder(int menuOrder) {
		MenuOrder = menuOrder;
	}

	@Override
	public String toString() {
		return "Menu [MenuID=" + MenuID + ", MenuName=" + MenuName + ", ControllerName=" + ControllerName
				+ ", ActionName=" + ActionName + ", ParentID=" + ParentID + ", MenuOrder=" + MenuOrder + "]";
	}


}
