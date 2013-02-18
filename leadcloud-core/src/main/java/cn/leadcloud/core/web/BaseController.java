/**
 * 
 */
package cn.leadcloud.core.web;

import java.sql.Timestamp;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;



import cn.leadcloud.core.model.User;
import cn.leadcloud.core.security.CurrentUserHolder;
import cn.leadcloud.core.service.UserService;
import cn.leadcloud.core.util.Const;

/**
 * @author sunphy
 * 2013-1-1 下午8:34:12
 */
@Controller

public class BaseController {

	private static final String INDEX = "/user/usercenter";
	private static final String LOGIN = "login";
	
	@Autowired
	private UserService userService;

	@RequestMapping("/")
	public String index(Model model, HttpServletRequest request,HttpSession session){
		String username = CurrentUserHolder.getCurrentUsername();
		if(username!=null && !"".equals(username)){
			User user = userService.get(username);
			//将当前用户设置到session中
			session.setAttribute(Const.SESSION_USER, user);
			model.addAttribute("user", user);
			Date date = new Date();
			Timestamp timeStamp = new Timestamp(date.getTime());
			/***用户每次登陆更新登录时间**/
			user.setLastLogin(timeStamp);
			userService.updatelogin(user);
		}
		return INDEX;
		
	}
	
	
	@RequestMapping("/login")
	public String login(){
		return LOGIN;
	}
	
	
	
	
	
	
	/**
	 * 用户注销
	 * @param session
	 * @return
	 */
	@RequestMapping(value="/logout")
	public String logout(HttpSession session){
		session.removeAttribute(Const.SESSION_USER);
		
	
		return LOGIN;
	}
}
