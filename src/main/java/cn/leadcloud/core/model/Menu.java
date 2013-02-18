package cn.leadcloud.core.model;

import java.util.List;


import lombok.Data;

@Data
public class Menu {
	private Integer menuId;
	private String menuName;
	private String menuUrl;
	private Integer parentId;
	
	private Menu parentMenu;
	private List<Menu> subMenu;
	private boolean hasMenu = false;

	public void setParentMenu(Menu parentMenu) {
		this.parentMenu = parentMenu;
	}
	public List<Menu> getSubMenu() {
		return subMenu;
	}
	public void setSubMenu(List<Menu> subMenu) {
		this.subMenu = subMenu;
	}
	public boolean isHasMenu() {
		return hasMenu;
	}
	public void setHasMenu(boolean hasMenu) {
		this.hasMenu = hasMenu;
	}
	
}
