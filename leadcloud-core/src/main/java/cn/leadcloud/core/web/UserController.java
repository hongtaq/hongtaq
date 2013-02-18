package cn.leadcloud.core.web;
import java.io.PrintWriter;
import java.math.BigInteger;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
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
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
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

/**
 * @author sunphy
 * 2013-1-1 下午3:15:51
 */
@Controller
@RequestMapping("/user")
public class UserController  {

	private static final String LIST = "/user/list";
	private static final String VIEW = "/user/view";
	private static final String NEW = "/user/signup";
	private static final String EDIT = "/user/changinfo";
	private static final String INDEX = "/user/usercenter";
	private static final String LOGIN = "login";
	
	@Autowired
	private UserService userService;
	
	
	@Autowired
	private Md5PasswordEncoder passwordEncoder;
	
	
	/**
	 * 列表，复杂点的需要分页，以及filter
	 * */
	@RequestMapping
	public String list(ModelMap model ,	HttpServletRequest request,User user){
		HttpSession session=request.getSession();
		/**获取当前登录用户**/
	    User user2=(User) session.getAttribute(Const.SESSION_USER);
		List<User> userList = userService.listPageUser(user);
		List<User> users = userService.list();
		model.addAttribute("users", users);
		return LIST;
	}
	
	

	
	
	//查看
	@RequestMapping(value="/{username}",method=RequestMethod.GET)
	public String view(@PathVariable String username, HttpServletRequest request,ModelMap model){
		User user = userService.get(username);
		model.addAttribute("user", user);
		return VIEW;
	}
	
	//添加显示表单
	@RequestMapping("/new")
	public String _new(){
		return NEW;
	}

	
	//添加动作
	@RequestMapping(value="/signup",method=RequestMethod.POST)
	@Transactional
	public String signup(HttpServletRequest request, User user,ModelMap model){
		String originalPassword = user.getPassword();
		user.setPassword(passwordEncoder.encodePassword(originalPassword, null));
		Boolean sucess=false;
		Date date = Calendar.getInstance().getTime();
	    user.setEmail(user.getEmail());
		user.setNickname(user.getUsername());
		user.setCreated(date);
		user.setStatus(0);
		user.setRoleId("ROLE_USER");
		/*Role role=roleService.get("ROLE_USER");*/
		/*user.setRole(role);*/
		user.setModified(date);
		user.setLastLogin(date);
        //userService.insert(user);
       sucess= userService.insertuserAndRole(user);
        if(sucess==true)
			model.addAttribute("status", "insertSuccess");
		else
			model.addAttribute("status", "insertFailed");
		return "redirect:/";
	}
	
	
	
	
	
	
	
	//编辑显示表单
	@RequestMapping("/{username}/edit")
	public String edit(@PathVariable String username,ModelMap model){
		User user = userService.get(username);
		model.addAttribute("user", user);
		return EDIT;
	}
	
	//编辑动作更新用户信息
	@RequestMapping(value="/{username}/update",method=RequestMethod.POST)
	public String update(@PathVariable String username,User user){
		User user2=userService.get(username);
		Date date = Calendar.getInstance().getTime();
		if (null!=user2) {
			user2.setModified(date);
			user2.setNickname(user.getNickname());
			user2.setRealname(user.getRealname());
			userService.update(user2);
		}
	
		return INDEX;
	}
	
	//编辑显示表单
	@RequestMapping("/{username}/toChgPassword")
	public String toChangePassword(@PathVariable String username,ModelMap model){
		User user = userService.get(username);
		model.addAttribute("user", user);
		return "/user/changepassword";
	}
	
	//编辑动作更新用户信息
	@RequestMapping(value="/{username}/chgpassword",method=RequestMethod.POST)
	public String changePassword(@PathVariable String username,User user,ModelMap model){
		User user2=userService.get(user.getUsername());
		 Date date = Calendar.getInstance().getTime();
	
			if (user2.getPassword().equals(passwordEncoder.encodePassword(user.getPassword(), null))) {
				user2.setModified(date);
				user2.setPassword( passwordEncoder.encodePassword(user.getNewPassword(), null));
				userService.update(user2);
				model.addAttribute("status", "changeSuccess");
			}else {
				model.addAttribute("status", "changeFailed");
			}
			
		return INDEX;
	}
	
	
	//删除
	@RequestMapping(value="{username}",method=RequestMethod.DELETE)
	public String delete(@PathVariable String username){
		userService.delete(username);
		return LOGIN;
	}
	
	
	@InitBinder
	public void initBinder(WebDataBinder binder){
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(format,true));
	}
	
}
