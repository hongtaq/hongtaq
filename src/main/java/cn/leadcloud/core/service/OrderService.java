/**
 * 
 */
package cn.leadcloud.core.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.leadcloud.core.BaseService;
import cn.leadcloud.core.mapper.OrderMapper;
import cn.leadcloud.core.model.Order;
import cn.leadcloud.core.model.User;

/**
 * @author sunphy
 * 2013-1-1 下午8:28:15
 */
@Service
public class OrderService extends BaseService<Order, OrderMapper> {

	@Autowired
	private OrderMapper mapper;
	
	@Override
	public OrderMapper getMapper() {
		return mapper;
	}

	
	

	/**根据日期查找当日最新的一条记录**/
	public String getOrderIdByDate() {
		Date date=new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyMMdd");
		StringBuilder sb = new StringBuilder(dateFormat.format(date));
		dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date today=null;
		  try {
			 today = dateFormat.parse(dateFormat.format(date));
			System.out.println(today);
			
		} catch (ParseException e) {
			
			e.printStackTrace();
		}//去掉分秒等 2013-02-02 00:00
		 
		  String orderId=getMapper().getOrderIdByDate(today);
		  if (null==orderId) {
			  orderId=sb.append("0000").toString();
		}
	
		return orderId;
	}



   /***查找该用户的所有订单**/
	public List<Order> listPageOrder(Order order) {
		return getMapper().listPageOrder(order);
	}
	
	
	
}
