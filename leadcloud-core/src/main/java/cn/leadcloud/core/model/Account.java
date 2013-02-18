package cn.leadcloud.core.model;

import java.util.Date;

import lombok.Data;

@Data
public class Account {
	
   private String accountId;
	
	private User user;
	
	private String username;
	
	 /**账户余额***/
	private float blance;
	
	    /**创建时间***/
	private Date created;
		
		 /**充值时间***/
	private Date rechargetime;
	

}
