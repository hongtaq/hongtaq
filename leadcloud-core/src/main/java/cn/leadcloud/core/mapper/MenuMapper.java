package cn.leadcloud.core.mapper;

import java.util.List;

import cn.leadcloud.core.MapperInterface;
import cn.leadcloud.core.model.Menu;



public interface MenuMapper extends MapperInterface<Menu> {
	List<Menu> listAllParentMenu();
	List<Menu> listSubMenuByParentId(Integer parentId);
	Menu getMenuById(Integer menuId);
	void insertMenu(Menu menu);
	void updateMenu(Menu menu);
	void deleteMenuById(Integer menuId);
	List<Menu> listAllSubMenu();
}
