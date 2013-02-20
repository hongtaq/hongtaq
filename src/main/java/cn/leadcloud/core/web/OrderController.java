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


import cn.leadcloud.core.model.Order;
import cn.leadcloud.core.model.User;
import cn.leadcloud.core.service.OrderService;
import cn.leadcloud.core.util.Const;




@Controller
@RequestMapping("/order")
public class OrderController {
	
	
	private static final String LIST = "order/orders";
	
	@Autowired
	private OrderService orderService;
	
	/**
	 * 列表，复杂点的需要分页，以及filter
	 * */
	@RequestMapping(value="/list") 
	public ModelAndView list(HttpServletRequest request,Order order){
		HttpSession session=request.getSession();
		/**获取当前登录用户**/
	    User user=(User) session.getAttribute(Const.SESSION_USER);
	     if (null==order.getUsername()) {
		  order.setUsername(user.getUsername());
	     }
	    List<Order> orderList = orderService.listPageOrder(order);
	    ModelAndView mv = new ModelAndView();
		mv.setViewName("order/orders");
		mv.addObject("orderList", orderList);
		mv.addObject("order", order);
		return mv;
	}
	
	

	
	
	//查看
	@RequestMapping(value="/{orderId}",method=RequestMethod.GET)
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
	@RequestMapping(value="/newOrder",method=RequestMethod.GET)
	@Transactional
	public String newOrder(HttpServletRequest request, Order order,ModelMap model){
		HttpSession session=request.getSession();
		 User user=(User)session.getAttribute(Const.SESSION_USER);
		 /**获取今天最新的订单***/
		
		 String orderId=orderService.getOrderIdByDate();
         Integer orderId2=Integer.parseInt(orderId)+1;
         String order3=String.valueOf(orderId2);
		 order.setOrderId(order3);
		 order.setServicename("云存储");
		 order.setUsername(user.getUsername());
		 order.setAmount(100.00);
		 order.setCreated(new Date());
		 order.setStatus(0);
		 order.setIsPaid(0);
		 orderService.insert(order);
		//return "redirect:/";
		 model.addAttribute("order", order);
		 return "order/orderdetail";
	}
	
	
	//添加动作
		@RequestMapping(value="/prenewOrder",method=RequestMethod.GET)
		@Transactional
		public String prenewOrder(HttpServletRequest request, Order order,ModelMap model){
			HttpSession session=request.getSession();
			 User user=(User)session.getAttribute(Const.SESSION_USER);
			 /**获取今天最新的订单***/
			
			 return "order/buystore";
		}
		
	
	
	
	
	//编辑显示表单
	@RequestMapping("/{orderId}/edit")
	public String edit(@PathVariable String username,ModelMap model){
		
		return "";
	}
	
	//编辑动作更新用户信息
	@RequestMapping(value="/{orderId}/update",method=RequestMethod.POST)
	public String update(@PathVariable String username,Order order){
	
		return "";
	}
	

}
