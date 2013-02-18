/**
 * 
 */
package cn.leadcloud.core.mapper;

import java.util.Date;
import java.util.List;



import cn.leadcloud.core.MapperInterface;
import cn.leadcloud.core.model.Order;
import cn.leadcloud.core.model.User;

/**
 * @author sunphy
 * 2013-1-1 下午8:16:29
 */
public interface OrderMapper extends MapperInterface<Order> {

	
	String getOrderIdByDate(Date date);
	


	List<Order> listPageOrder(Order order);
	
	

}
