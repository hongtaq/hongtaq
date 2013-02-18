/**
 * 
 */
package cn.leadcloud.core.model;

import java.util.Date;

import lombok.Data;

/**
 * 
 * @author mc2
 *下午12:27:58
 */
@Data
public class Order {

	private String orderId;
	
	private User user;
	
	private String username;
	
	private Catalog catalog;
	
	private String servicename;
	
	private String config;
	
	 /**价额总额***/
	private double amount;
	
	
	 /**创建时间***/
	private Date created;
	
	 /**支付时间***/
	private Date paidtime;
	
	
	/**账单状态，逻辑删除**/
	private Integer status;
	
	/**是否已支付**/
	private Integer isPaid;
	
	/**备注**/
	private String note;
	
	/**失效时间**/
	private Date expirytime;
	
	private OrderItem orderItem;
	
	private String itemid;
	
	
	/**不需要映射到数据库**/
	private Date createdStart;
	
	private Date createdEnd;
	 
    private Page page;
	

	

  public Page getPage() {
		if(page==null)
			page = new Page();
		return page;
	}
	public void setPage(Page page) {
		this.page = page;
	}
	
}
