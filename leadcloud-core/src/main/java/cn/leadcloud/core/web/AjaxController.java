package cn.leadcloud.core.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cn.leadcloud.core.model.User;
import cn.leadcloud.core.service.UserService;

import com.google.code.kaptcha.Constants;


/**
 * @author sunphy
 * created on 2010-11-3 下午07:54:17
 */
@Controller
@RequestMapping("/ajax")
public class AjaxController {
	
	
	@Autowired
	private UserService userService;

	@RequestMapping("/username")
	public void checkUser(
			@RequestParam("username") String username,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		response.setHeader("Cache-Control", "no-cache");
		response.setDateHeader("Expires", 0);
		User user=userService.get(username);
		if(user == null)
			response.getWriter().write("true");
		else
			response.getWriter().write("false");
	}
	
	@RequestMapping("/email")
	public void checkEmail(
			@RequestParam("email") String email,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		response.setHeader("Cache-Control", "no-cache");
		response.setDateHeader("Expires", 0);
		int count = 	userService.getCountByEmail(email);
		if(count < 1)
			response.getWriter().write("true");
		else
			response.getWriter().write("false");
	}
	
	@RequestMapping("/kaptcha")
	public void kaptcha(
			@RequestParam("code") String code,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		HttpSession session = request.getSession();
		String kaptcha = (String) session
				.getAttribute(Constants.KAPTCHA_SESSION_KEY);
		response.setHeader("Cache-Control", "no-cache");
		response.setDateHeader("Expires", 0);
		if(kaptcha.equalsIgnoreCase(code))
			response.getWriter().write("true");
		else
			response.getWriter().write("false");
	}
}
