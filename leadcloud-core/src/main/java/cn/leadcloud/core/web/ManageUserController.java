package cn.leadcloud.core.web;


import java.io.PrintWriter;
import java.math.BigInteger;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.security.authentication.encoding.Md5PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import cn.leadcloud.core.model.Menu;
import cn.leadcloud.core.model.Role;
import cn.leadcloud.core.model.User;
import cn.leadcloud.core.service.MenuService;
import cn.leadcloud.core.service.RoleService;
import cn.leadcloud.core.service.UserService;
import cn.leadcloud.core.util.Const;
import cn.leadcloud.core.util.RightsHelper;
import cn.leadcloud.core.util.Tools;




@Controller
@RequestMapping("/manage")
public class ManageUserController {

	@Autowired
	private UserService userService;
	@Autowired
	private MenuService menuService;
	
	@Autowired
	private Md5PasswordEncoder passwordEncoder;
	
	@Autowired
	private RoleService roleService;
	
	
	/**
	 * 访问登录页
	 * @return
	 */
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String loginGet(){
		return "manage/login";
	}
	
	/**
	 * 请求登录，验证用户
	 * @param session
	 * @param loginname
	 * @param password
	 * @param code
	 * @return
	 */
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public ModelAndView loginPost(HttpSession session,@RequestParam String username,@RequestParam String password){

		ModelAndView mv = new ModelAndView();
		String errInfo = "";
			User user = userService.getUserByNameAndPwd(username, password);
			if(user!=null){
				user.setLastLogin(new Date());
				userService.updatelogin(user);
				session.removeAttribute(Const.SESSION_USER);
				session.setAttribute(Const.SESSION_USER, user);
		
		   }
		if(Tools.isEmpty(errInfo)){
			mv.setViewName("redirect:index");
		}else{
			mv.addObject("errInfo", errInfo);
			mv.addObject("username",username);
			mv.addObject("password",password);
			mv.setViewName("manage/login");
		}
		return mv;
	}
	
	/**
	 * 访问系统首页
	 * @param session
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/index")
	public String index(HttpSession session,Model model){
		User user = (User)session.getAttribute(Const.SESSION_USER);
		String userRights = user.getRights();
	   //User user2 = userService.getUserAndRoleByUsername(user);
		List<Role> roles=userService.getRoles(user);
		List<String> roleRights=new ArrayList<String>();
		for (Role role : roles) {
			if (role!=null) 
				roleRights.add(role.getRights());
		}

		//避免每次拦截用户操作时查询数据库，以下将用户所属角色权限、用户权限限都存入session
		session.setAttribute(Const.SESSION_ROLE_RIGHTS, roleRights); //将角色权限存入session
		session.setAttribute(Const.SESSION_USER_RIGHTS, userRights); //将用户权限存入session
		
		List<Menu> menuList = menuService.listAllMenu();
		if(Tools.notEmpty(userRights) || Tools.isEmptyList(roleRights)){
			for(Menu menu : menuList){
				menu.setHasMenu(RightsHelper.testRights(userRights, menu.getMenuId()));
				//menu.setHasMenu(true);
				if(menu.isHasMenu()){
					List<Menu> subMenuList = menu.getSubMenu();
					for(Menu sub : subMenuList){
						
						sub.setHasMenu(RightsHelper.testRights(userRights, sub.getMenuId()));
					}
				}
			}
		}
		model.addAttribute("user", user);
		model.addAttribute("menuList", menuList);
		return "manage/index";
	}
	
	/**
	 * 进入首页后的默认页面
	 * @return
	 */
	@RequestMapping(value="/default")
	public String defaultPage(){
		return "manage/default";
	}
	
	/**
	 * 用户注销
	 * @param session
	 * @return
	 */
	@RequestMapping(value="/logout")
	public String logout(HttpSession session){
		session.removeAttribute(Const.SESSION_USER);
		session.removeAttribute(Const.SESSION_ROLE_RIGHTS);
		session.removeAttribute(Const.SESSION_USER_RIGHTS);
		return "manage/login";
	}
	
	
	
	
	
	/**
	 * 后台manage显示用户列表
	 * @param user
	 * @return
	 */
	@RequestMapping(value="/list")
	public ModelAndView list( User user  ){
		//List<User> userList = userService.listAllUser(page);
	
		List<User> userList = userService.listPageUser(user);
		List<Role> roleList = roleService.listAllRoles();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("manage/users");
		mv.addObject("userList", userList);
		mv.addObject("roleList", roleList);
		mv.addObject("user", user);
		return mv;
	}
	
	/**
	 * 后台manage请求新增用户页面
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/add")
	public String toAdd(Model model){
		List<Role> roleList = roleService.listAllRoles();
		model.addAttribute("roleList", roleList);
		return "/manage/user_info";
	}
	
	
	/**
	 * 后台manage保存用户信息
	 * @param user
	 * @return
	 */
	@RequestMapping(value="/save",method=RequestMethod.POST)
	public ModelAndView saveUser(User user){
		ModelAndView mv = new ModelAndView();
		
		Date date =new Date();
		user.setNickname(user.getUsername());
		user.setLastLogin(date);
		user.setModified(date);
		if (null!=user.getPassword()) {
		user.setPassword(passwordEncoder.encodePassword(user.getPassword(), null));
		}
		user.setStatus(0);
		User user2=userService.get(user.getUsername());
		if(user2==null){
			if(userService.insertUser(user)==false){
				mv.addObject("msg","failed");
			}else{
				mv.addObject("msg","success");
			}
		}else{
			userService.update(user);
		}
		mv.setViewName("/manage/save_result");
		return mv;
	}
	
	
	
	/**
	 * 后台manage请求编辑用户页面
	 * @param String username
	 * @return
	 */
	@RequestMapping(value="/edit",method=RequestMethod.GET)
	public ModelAndView toEdit(@RequestParam String username){
		ModelAndView mv = new ModelAndView();
		User user = userService.get(username);
		List<Role> roleList = roleService.listAllRoles();
		mv.addObject("user", user);
		mv.addObject("roleList", roleList);
		mv.setViewName("/manage/user_info");
		return mv;
	}
	
	
	
	
	/**
	 * 后台manage请求用户授权页面
	 * @param userId
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/auth")
	public String auth(@RequestParam String username,Model model){
		List<Menu> menuList = menuService.listAllMenu();
		User user = userService.get(username);
		String userRights = user.getRights();
		if(Tools.notEmpty(userRights)){
			for(Menu menu : menuList){
				menu.setHasMenu(RightsHelper.testRights(userRights, menu.getMenuId()));
				if(menu.isHasMenu()){
					List<Menu> subRightsList = menu.getSubMenu();
					for(Menu sub : subRightsList){
						sub.setHasMenu(RightsHelper.testRights(userRights, sub.getMenuId()));
					}
				}
			}
		}
		JSONArray arr = JSONArray.fromObject(menuList);
		String json = arr.toString();
		json = json.replaceAll("menuId", "id").replaceAll("menuName", "name").replaceAll("subMenu", "nodes").replaceAll("hasMenu", "checked");
		model.addAttribute("zTreeNodes", json);
		model.addAttribute("username", username);
		return "manage/authorization";
	}
	
	
	
	/**
	 *后台manage 保存用户权限
	 * @param userId
	 * @param menuIds
	 * @param out
	 */
	@RequestMapping(value="/auth/save")
	public void saveAuth(@RequestParam String username,@RequestParam String menuIds,PrintWriter out){
		BigInteger rights = RightsHelper.sumRights(Tools.str2StrArray(menuIds));
		User user = userService.get(username);
		user.setRights(rights.toString());
		userService.updateUserRights(user);
		out.write("success");
		out.close();
	}
	
	
	
	/**
	 * 删除某个用户
	 * @param userId
	 * @param out
	 */
	@RequestMapping(value="/delete")
	public void deleteUser(@RequestParam String username,PrintWriter out){
		userService.delete(username);
		out.write("success");
		out.close();
	}
	
	@InitBinder
	public void initBinder(WebDataBinder binder){
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(format,true));
	}
	
}
