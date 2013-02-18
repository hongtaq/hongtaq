/**
 * 
 */
package cn.leadcloud.core.model;

import java.util.Date;

import lombok.Data;

/**
 * @author sunphy
 * 2013-1-1 下午8:04:45
 */
@Data
public class Trade {

	private long id;
	
	public enum Type{
		recharge,buy,cashout;
	}
	private Type type;
	
	private double amount;
	
	private Date traded;
	
	private String source;
	
	private String notes;
}
