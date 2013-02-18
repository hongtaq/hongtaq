package cn.leadcloud.core.model;

import lombok.Data;

@Data
public class OrderItem {
	private String itemid;
	private long orderId;
	
	/**多长时间**/
	private long longtime;
	
	/**多大容量**/
	private long capacity;
	
	/**总价格**/
	private long totalprice;
	
	public long getTotalprice(){
		return longtime*capacity;
	}

}
