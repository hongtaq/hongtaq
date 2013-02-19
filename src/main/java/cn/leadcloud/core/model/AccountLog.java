package cn.leadcloud.core.model;

import java.util.Date;

import lombok.Data;

@Data
public class AccountLog {
	
   private String accountLogId;
   
   private Account account;
   
   
   private String accountId;
	
	private User user;
	
	private String username;
	
	 /**充值或者消费金额***/
	private float money;
	
	    /**创建时间***/
	private Date created;
		
		 /**充值时间***/
	private Date rechargetime;
	
	 /**消费时间***/
	private Date paidtime;
	
	// 本次操作后当前账户金额
	private float currentAccount;
	
	//备注
	private String remark;
	
	

}
