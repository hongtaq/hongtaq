package cn.leadcloud.core.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.leadcloud.core.BaseService;
import cn.leadcloud.core.mapper.MenuMapper;

import cn.leadcloud.core.model.Menu;



@Service
public class MenuService extends BaseService<Menu, MenuMapper> {

	@Autowired
	private MenuMapper mapper;
	
	public void deleteMenuById(Integer menuId) {
		
		mapper.deleteMenuById(menuId);
	}

	public Menu getMenuById(Integer menuId) {
		
		return mapper.getMenuById(menuId);
	}

	public List<Menu> listAllParentMenu() {
		
		return mapper.listAllParentMenu();
	}

	public void saveMenu(Menu menu) {
		
		if(menu.getMenuId()!=null && menu.getMenuId().intValue()>0){
			mapper.updateMenu(menu);
		}else{
			mapper.insertMenu(menu);
		}
	}

	public List<Menu> listSubMenuByParentId(Integer parentId) {
		
		return mapper.listSubMenuByParentId(parentId);
	}
	
	public List<Menu> listAllMenu() {
		
		List<Menu> rl = this.listAllParentMenu();
		for(Menu menu : rl){
			List<Menu> subList = this.listSubMenuByParentId(menu.getMenuId());
			menu.setSubMenu(subList);
		}
		return rl;
	}

	public List<Menu> listAllSubMenu(){
		return mapper.listAllSubMenu();
	}
	
	



	@Override
	public MenuMapper getMapper() {
		// TODO Auto-generated method stub
		return mapper;
	}

}
