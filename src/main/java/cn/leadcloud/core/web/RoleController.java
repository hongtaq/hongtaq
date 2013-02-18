package cn.leadcloud.core.web;



import java.io.PrintWriter;
import java.math.BigInteger;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cn.leadcloud.core.model.Menu;
import cn.leadcloud.core.model.Role;
import cn.leadcloud.core.service.MenuService;
import cn.leadcloud.core.service.RoleService;
import cn.leadcloud.core.util.RightsHelper;
import cn.leadcloud.core.util.Tools;



@Controller
@RequestMapping(value="manage/role")
public class RoleController {
	
	@Autowired
	private RoleService roleService;
	@Autowired
	private MenuService menuService;
	
	/**
	 * 显示角色列表
	 * @param map
	 * @return
	 */
	@RequestMapping
	public String list(Map<String,Object> map){
		List<Role> roleList = roleService.listAllRoles();
		map.put("roleList", roleList);
		return "manage/roles";
	}
	
	/**
	 * 保存角色信息
	 * @param out
	 * @param role
	 */
	@RequestMapping(value="/save")
	public void save(PrintWriter out,Role role){
		boolean flag = true;
		if(role.getName()!=null &&!"".equals(role.getName().trim())){
			flag = roleService.updateRoleBaseInfo(role);
		}else{
			flag = roleService.insertRole(role);
		}
		if(flag){
			out.write("success");
		}else{
			out.write("failed");
		}
		out.flush();
		out.close();
	}
	
	/**
	 * 请求角色授权页面
	 * @param roleId
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/auth")
	public String auth(@RequestParam String roleId,Model model){
		List<Menu> menuList = menuService.listAllMenu();
		Role role = roleService.getRoleById(roleId);
		String roleRights = role.getRights();
		if(Tools.notEmpty(roleRights)){
			for(Menu menu : menuList){
				menu.setHasMenu(RightsHelper.testRights(roleRights, menu.getMenuId()));
				if(menu.isHasMenu()){
					List<Menu> subMenuList = menu.getSubMenu();
					for(Menu sub : subMenuList){
						sub.setHasMenu(RightsHelper.testRights(roleRights, sub.getMenuId()));
					}
				}
			}
		}
		JSONArray arr = JSONArray.fromObject(menuList);
		String json = arr.toString();
		json = json.replaceAll("menuId", "id").replaceAll("menuName", "name").replaceAll("subMenu", "nodes").replaceAll("hasMenu", "checked");
		model.addAttribute("zTreeNodes", json);
		model.addAttribute("roleId", roleId);
		return "manage/authorization";
	}
	
	/**
	 * 保存角色权限
	 * @param roleId
	 * @param menuIds
	 * @param out
	 */
	@RequestMapping(value="/auth/save")
	public void saveAuth(@RequestParam String roleId,@RequestParam String menuIds,PrintWriter out){
		BigInteger rights = RightsHelper.sumRights(Tools.str2StrArray(menuIds));
		Role role = roleService.getRoleById(roleId);
		role.setRights(rights.toString());
		roleService.updateRoleRights(role);
		out.write("success");
		out.close();
	}
	
	@InitBinder
	public void initBinder(WebDataBinder binder){
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(format,true));
	}
}
