package cn.leadcloud.core.web;



import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import cn.leadcloud.core.model.Account;
import cn.leadcloud.core.model.Order;
import cn.leadcloud.core.model.User;
import cn.leadcloud.core.service.OrderService;
import cn.leadcloud.core.util.Const;




@Controller
@RequestMapping("/account")
public class AccountController {
	
	
	private static final String LIST = "account/accounts";
	
	@Autowired
	private OrderService orderService;
	
	/**
	 * 列表，复杂点的需要分页，以及filter
	 * */
	@RequestMapping(value="/list") 
	public ModelAndView list(HttpServletRequest request,Account account){
		return null;
		
	}
	
	

	
	
	//查看
	@RequestMapping(value="/{accountId}",method=RequestMethod.GET)
	public String view(@PathVariable Integer orderId, HttpServletRequest request,ModelMap model){
		
		Order  order=orderService.get(orderId);
		model.addAttribute("order", order);
		return "";
	}
	
	//添加显示表单
	@RequestMapping("/new")
	public String _new(){
		return "";
	}

	
	//添加动作
	@RequestMapping(value="/newAccount",method=RequestMethod.GET)
	@Transactional
	public String newAccount(HttpServletRequest request, Account account,ModelMap model){
		
		
		return "redirect:/";
	}
	
	

	
	//编辑显示表单
	@RequestMapping("/{accountId}/edit")
	public String edit(@PathVariable String username,ModelMap model){
		
		return "";
	}
	
	//编辑动作更新用户信息
	@RequestMapping(value="/{accountId}/update",method=RequestMethod.POST)
	public String update(@PathVariable String username,Account account){
	
		return "";
	}
	

}
